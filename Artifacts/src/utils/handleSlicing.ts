import React from "react";
import { globalContext } from "../context";
import { getKeyFromValue } from "./utils";

const topology_json_filename = "origin.json";

type Instance = {
    instanceName: string;
    inputPorts: Array<{
        name: string;
        portNumbers: Array<number>;
    }>;
    outputPorts: Array<{
        name: string;
        portNumbers: Array<number>;
    }>;
};

type Connection = [Array<number>, Array<number>];
type Topology = {
    columns: Array<Array<Instance>>;
    connections: Array<Connection>;
};
type ColumnRow = { column: number; row: number };
type Config = {
    segment: { ground_segments: Array<string> };
};

export type CouplingMethod = "hops" | "ports";
export type ComplexityMethod =
    | "LOC"
    | "Number of Ports"
    | "Number of Connected Components";
export type StandardOrSpecific = "Standard" | "Specific";
export type GroundOrFlight = "Ground" | "Flight";

export class Slicing {
    readonly topology: Topology;
    readonly instanceList: Array<string>;
    readonly instanceDict: {
        [key: string]: ColumnRow;
    };
    readonly plainTopology: Topology = {
        columns: [],
        connections: [],
    };
    readonly ctx = React.useContext(globalContext);
    readonly couplingMethods: Array<CouplingMethod> = ["hops", "ports"];
    readonly telecommandList: Array<string>;
    readonly telecommandDict: { [key: string]: Array<string> };
    readonly instanceTypeNameDict: { [key: string]: string };
    readonly instanceNamespaceDict: { [key: string]: string };
    readonly complexityMethods: Array<ComplexityMethod> = [
        "LOC",
        "Number of Ports",
        "Number of Connected Components",
    ];
    readonly instanceLocDict: { [key: string]: number };
    readonly instancePortNumDict: { [key: string]: number };
    readonly config: Config;
    readonly connectionList: Array<{
        source: string | null | undefined;
        target: string | null | undefined;
    }>;

    constructor() {
        let topology_file_content = "";
        let config: Config = { segment: { ground_segments: [] } };
        const localInstanceTypeNameDict: typeof this.instanceTypeNameDict = {};
        const localInstanceNamespaceDict: typeof this.instanceNamespaceDict =
            {};
        const localConnectionList: typeof this.connectionList = [];

        for (const file of this.ctx.projectFileList) {
            if (file.filepath.includes(topology_json_filename)) {
                topology_file_content = file.content;
            } else if (file.filepath.includes("config.json")) {
                config = JSON.parse(file.content);
            } else if (file.filepath.includes("TopologyAppAi.xml")) {
                // make instance [type: name] dict

                const xml = new DOMParser().parseFromString(
                    file.content,
                    "text/xml"
                );

                // instance
                const instanceList = xml.getElementsByTagName("instance");
                for (let i = 0; i < instanceList.length; i++) {
                    const instanceType = instanceList[i].getAttribute("type");
                    const instanceName = instanceList[i].getAttribute("name");
                    const namespace = instanceList[i].getAttribute("namespace");
                    if (instanceType && instanceName && namespace) {
                        const compName = instanceName.replace(/\d+/g, ""); // remove suffix num
                        localInstanceTypeNameDict[instanceType] = compName;
                        localInstanceNamespaceDict[instanceName] = namespace;
                    }
                }

                // connection
                const connectionList = xml.getElementsByTagName("connection");
                for (let i = 0; i < connectionList.length; i++) {
                    const source_port =
                        connectionList[i].firstElementChild?.getAttribute(
                            "port"
                        );
                    const source_component =
                        connectionList[i].firstElementChild?.getAttribute(
                            "component"
                        );
                    const target_port =
                        connectionList[i].lastElementChild?.getAttribute(
                            "port"
                        );
                    const target_component =
                        connectionList[i].lastElementChild?.getAttribute(
                            "component"
                        );

                    localConnectionList.push({
                        source: `${source_port}-${source_component}`,
                        target: `${target_port}-${target_component}`,
                    });
                }
            }
        }
        this.instanceTypeNameDict = localInstanceTypeNameDict;
        this.instanceNamespaceDict = localInstanceNamespaceDict;
        this.connectionList = localConnectionList;
        this.config = config;

        // TODO: add error handling
        if (topology_file_content === "")
            console.error("*TopologyAppAi.xml was not detected");

        this.topology = this.str2json(topology_file_content);

        const localInstanceList: {
            [key: string]: { column: number; row: number };
        } = {};

        for (let i = 0; i < this.topology.columns.length; i++) {
            for (let j = 0; j < this.topology.columns[i].length; j++) {
                const instanceName = this.topology.columns[i][j].instanceName;
                localInstanceList[instanceName] = { column: i, row: j };
            }
        }

        this.instanceDict = localInstanceList;
        this.instanceList = Object.keys(this.instanceDict);

        this.telecommandDict = this.getTelecommandDict();
        this.telecommandList = Object.keys(this.telecommandDict);
        this.instanceLocDict = this.getInstanceLocDict();
        this.instancePortNumDict = this.getInstPortNumDict();
    }

    getInstanceLocDict() {
        const localInstanceLocDict: typeof this.instanceLocDict = {};
        let num = 0;

        for (const ins of this.instanceList) {
            const compName = getKeyFromValue(
                this.instanceTypeNameDict,
                ins.replace(/\d+/g, "") // remove suffix number
            );

            for (const file of this.ctx.projectFileList) {
                if (file.filepath.split("/")[3]?.includes(compName)) {
                    const extension = file.filepath.split(".").slice(-1)[0];

                    if (["hpp", "cpp"].includes(extension)) {
                        if (Object.keys(localInstanceLocDict).includes(ins))
                            num = localInstanceLocDict[ins] + file.loc;
                        else num = file.loc;

                        localInstanceLocDict[ins] = num;
                    }
                }
            }
        }

        return localInstanceLocDict;
    }

    getInstPortNumDict() {
        const localInstPortNumDict: typeof this.instancePortNumDict = {};

        for (const column of this.topology.columns) {
            for (const c of column) {
                let portNum = 0;

                for (const p of [...c.inputPorts, ...c.outputPorts]) {
                    portNum += p.portNumbers.length;
                }

                localInstPortNumDict[c.instanceName] = portNum;
            }
        }

        return localInstPortNumDict;
    }

    getPortNumFromName(portName: string, compName: string) {
        // const insName = this.instanceTypeNameDict[compName];
        let insName = this.instanceTypeNameDict[compName];
        if (!Object.keys(this.instanceNamespaceDict).includes(insName))
            insName += "1";

        let portIdx = 0;
        let portNum: Array<number> = [];
        for (const column of this.topology.columns) {
            for (const c of column) {
                if (c.instanceName === insName) {
                    for (let i = 0; i < c.inputPorts.length; i++) {
                        if (c.inputPorts[i].name === portName) {
                            portIdx = i;
                            portNum = c.inputPorts[i].portNumbers;
                        }
                    }

                    for (let i = 0; i < c.outputPorts.length; i++) {
                        if (c.outputPorts[i].name === portName) {
                            portIdx = i;
                            portNum = c.outputPorts[i].portNumbers;
                        }
                    }
                }
            }
        }

        return { portIdx: portIdx, portNum: portNum };
    }

    getInsFromPort(
        compName: string,
        connectionList: typeof this.connectionList,
        insName: string
    ) {
        const callerInsName = this.instanceTypeNameDict[compName];
        const out: Array<string> = [];
        for (const conn of connectionList) {
            if (JSON.stringify(conn).includes(callerInsName)) {
                for (const port of [conn.source, conn.target]) {
                    if (port) {
                        const insName = port.split("-")[1];
                        if (!out.includes(insName)) out.push(insName);
                    }
                }
            }
        }

        const out2: typeof out = [insName];
        for (const o of out) {
            if (Object.values(this.instanceTypeNameDict).includes(o))
                out2.push(o);
        }
        return out2;
    }

    // manually mapping funcName with port name
    getRelatedPortType(funcName: string) {
        let portList: Array<string> = [];

        if (funcName === "cmdResponse_out") portList = ["CmdResponse"];
        else if (funcName.includes("log_ACTIVITY"))
            portList = ["Log", "LogText", "Time"];
        else if (funcName === "tlmWrite") portList = ["Tlm"];
        else if (funcName === "Data_out") portList = ["DataBuffer"];
        else if (funcName === "paramGet") portList = ["ParamGet"];
        else if (funcName === "paramSet") portList = ["ParamSet"];
        else if (funcName.includes("ping")) portList = ["Ping"];
        else;

        return portList;
    }

    getCalledComponentInFunc(
        cmdName: string,
        xml_file: (typeof this.ctx.projectFileList)[0],
        insName: string
    ) {
        // const regExp = new RegExp(cmdName + "_cmdHandler(.*\n)*(.*)void ", "g");
        const regExp = new RegExp(
            cmdName + "_cmdHandler(.*\n)*(.*)cmdResponse_out",
            "g"
        );
        // let calledCompList: typeof this.ctx.projectFileList = [];

        const xml = new DOMParser().parseFromString(
            xml_file.content,
            "text/xml"
        );
        const portList = xml.getElementsByTagName("port");

        const compName = xml_file.filepath
            .split("/")
            .slice(-1)[0]
            .replace("ComponentAi.xml", "");
        const cppFilename = xml_file.filepath.replace("ComponentAi.xml", "");
        const cppFile = this.ctx.projectFileList.filter((file) => {
            return (
                file.filepath.includes(cppFilename) &&
                file.filepath.split(".")[1] === "cpp"
            );
        })[0];

        const funcCode = cppFile.content.match(regExp);
        console.log("funcCode", funcCode);

        const lst: Array<string> = [];
        if (funcCode !== null && funcCode) {
            const funcList = funcCode[0].match(/this->\w*\(/g);

            if (funcList !== null) {
                for (const func of funcList) {
                    const funcName = func
                        .replace("this->", "")
                        .replace("(", "");

                    for (let i = 0; i < portList.length; i++) {
                        const portDataType =
                            portList[i].getAttribute("data_type");
                        const portName = portList[i].getAttribute("name");
                        if (portDataType !== null && portName !== null) {
                            const portType = portDataType.split("::")[1];

                            if (
                                this.getRelatedPortType(funcName).includes(
                                    portType
                                )
                            ) {
                                const tmpInsList = this.getInsFromPort(
                                    compName,
                                    this.connectionList.filter((conn) => {
                                        return (
                                            conn.source?.includes(portName) ||
                                            conn.target?.includes(portName)
                                        );
                                    }),
                                    insName
                                );
                                lst.push(...tmpInsList);
                            }
                        }
                    }
                }
            }
        }

        if (lst.length !== 0) {
            // console.log(cmdName, Array.from(new Set(lst)));
        }
        return Array.from(new Set(lst));
    }

    getTelecommandDict() {
        const localCmdDict: typeof this.telecommandDict = {};
        const pattern = /<command (.)*>/g;
        const cmdCompFileList: Array<{
            cmdName: string;
            compName: string;
            file: any;
        }> = [];

        for (const file of this.ctx.projectFileList) {
            const extension = file.filepath
                .replace(/\s/g, "")
                .split(".")
                .slice(-1)[0];
            if (extension === "xml") {
                const matched = file.content.match(pattern);
                if (matched !== null) {
                    for (const match of matched) {
                        if (file.filepath.split("/")[2] !== "Top") {
                            const compName = file.filepath
                                .split("/")
                                .slice(-1)[0]
                                .replace("ComponentAi.xml", "");
                            const cmdName = match.split('"')[5];
                            cmdCompFileList.push({
                                cmdName: cmdName,
                                compName: compName,
                                file: file,
                            });
                        }
                    }
                }
            }
        }

        for (const ins of this.instanceList) {
            const insCmdList = cmdCompFileList.filter((cmdCompFile) => {
                return ins.includes(
                    this.instanceTypeNameDict[cmdCompFile.compName]
                );
            });
            for (const insCmd of insCmdList) {
                const calledCompList = this.getCalledComponentInFunc(
                    insCmd.cmdName,
                    insCmd.file,
                    ins
                );
                if (calledCompList.length !== 0)
                    localCmdDict[`${insCmd.cmdName} (${ins})`] = calledCompList;
                else localCmdDict[`${insCmd.cmdName} (${ins})`] = [ins];
            }
        }
        return localCmdDict;
    }

    getTopology() {
        return JSON.stringify(this.topology);
    }

    str2json(str: string) {
        return JSON.parse(str);
    }

    getFilteredInstances(insList: Array<string>) {
        const columnsOut = [];
        for (const column of this.topology.columns) {
            const columnOut: Array<Instance> = [];
            for (const c of column) {
                if (insList.includes(String(c.instanceName))) columnOut.push(c);
                else
                    columnOut.push({
                        instanceName: "",
                        inputPorts: [],
                        outputPorts: [],
                    });
            }
            columnsOut.push(columnOut);
        }

        return columnsOut;
    }

    isColRowIncluded(
        columns: typeof this.topology.columns,
        colRow: Array<number>
    ) {
        let flg = false;
        for (const column of columns) {
            for (const c of column) {
                if (c.instanceName !== "") {
                    const orgnColRow = this.instanceDict[c.instanceName];

                    if (
                        orgnColRow !== undefined &&
                        orgnColRow.column === colRow[0] &&
                        orgnColRow.row === colRow[1]
                    ) {
                        flg = true;
                    }
                }
            }
        }
        return flg;
    }

    // remove empty instance for display
    clean(topology: Topology) {
        const localTopology = this.plainTopology;
        const emptyInsDict: { [key: string]: Array<number> } = {};
        const columnsOut = [];
        const connectionsOut: Array<Connection> = [];

        for (let i = 0; i < topology.columns.length; i++) {
            const columnOut: Array<Instance> = [];
            const emptyRowList = [];
            for (let j = 0; j < topology.columns[i].length; j++) {
                const c = topology.columns[i][j];
                if (Object.values(c).join("") === "") emptyRowList.push(j);
                else {
                    columnOut.push(c);
                }
            }

            if (emptyRowList.length !== 0) {
                emptyInsDict[String(i)] = emptyRowList;
            }
            columnsOut.push(columnOut);
        }

        for (const connection of topology.connections) {
            const connectionTmp = [];

            for (const ins of connection) {
                const colRow = ins.slice(0, 2);
                let newIns: Array<number> = [];
                if (this.isColRowIncluded(topology.columns, colRow)) {
                    if (Object.keys(emptyInsDict).includes(String(colRow[0]))) {
                        const promoteDegree = emptyInsDict[colRow[0]].filter(
                            (v) => {
                                return colRow[1] >= v;
                            }
                        ).length;

                        newIns = [
                            colRow[0],
                            colRow[1] - promoteDegree,
                            ins[2],
                            ins[3],
                        ];
                    } else {
                        newIns = ins;
                    }
                }
                connectionTmp.push(newIns);
            }
            connectionsOut.push(connectionTmp as Connection);
        }

        localTopology.columns = columnsOut;
        localTopology.connections = connectionsOut;
        return JSON.stringify(localTopology);
    }

    manual(selectedInstanceList: string[]) {
        const localTopology = this.plainTopology;

        localTopology.columns = this.getFilteredInstances(selectedInstanceList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    isSameColRow(ins1: Array<number>, ins2: ColumnRow) {
        return Boolean(ins1[0] === ins2.column && ins1[1] === ins2.row);
    }

    isSamePort(connection: Connection, target: string) {
        const inputTarget = connection[0].slice(0, 2);
        const outputTarget = connection[1].slice(0, 2);

        const boolSameInput = this.isSameColRow(
            inputTarget,
            this.instanceDict[target]
        );
        const boolSameOutput = this.isSameColRow(
            outputTarget,
            this.instanceDict[target]
        );

        const boolSamePort = Boolean(boolSameInput || boolSameOutput);
        const ioTarget: number[] = boolSameInput ? outputTarget : inputTarget;

        const showIns = getKeyFromValue(this.instanceDict, {
            column: ioTarget[0],
            row: ioTarget[1],
        });

        return { boolSamePort: boolSamePort, showIns: showIns };
    }

    couplingByHops(origin_target: string, max_hops: number) {
        const localTopology = this.plainTopology;
        const hoopedInsList = [origin_target];
        const connectionsOut = [];

        for (let hoop = 1; hoop <= max_hops; hoop++) {
            // deep copy
            const hoopedInsListRn = JSON.parse(JSON.stringify(hoopedInsList));

            for (const target of hoopedInsListRn) {
                for (const connection of this.topology.connections) {
                    const isSamePort = this.isSamePort(connection, target);
                    if (isSamePort.boolSamePort) {
                        connectionsOut.push(connection);
                        if (!hoopedInsList.includes(isSamePort.showIns))
                            hoopedInsList.push(isSamePort.showIns);
                    }
                }
            }
        }

        localTopology.columns = this.getFilteredInstances(hoopedInsList);
        localTopology.connections = connectionsOut;

        return this.clean(localTopology);
    }

    couplingByPorts(target: string, num: number) {
        const localTopology = this.plainTopology;
        const showInsList = [target];
        const connectedInsList = [];
        const connectionsOut = [];

        for (const connection of this.topology.connections) {
            const isSamePort = this.isSamePort(connection, target);
            if (isSamePort.boolSamePort) {
                connectionsOut.push(connection);
                connectedInsList.push(isSamePort.showIns);
            }
        }

        for (const connectedIns of connectedInsList) {
            const howMany = connectedInsList.filter(
                (ins) => ins.indexOf(connectedIns) !== -1
            ).length;

            if (howMany >= num && !showInsList.includes(connectedIns)) {
                showInsList.push(connectedIns);
            }
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = connectionsOut;

        return this.clean(localTopology);
    }

    coupling(target: string, num: number, method: CouplingMethod) {
        if (method === "hops") return this.couplingByHops(target, num);
        else if (method === "ports") return this.couplingByPorts(target, num);
        else return ""; // bad error handling
    }

    telecommand(target: string) {
        const localTopology = this.plainTopology;
        const showInsList = [];

        for (const ins of this.telecommandDict[target]) {
            // const compName = this.instanceTypeNameDict[type];
            // if (compName !== undefined) {
            //     console.log("compName:", compName);
            //     const regExp = new RegExp(compName);

            //     for (const ins of this.instanceList) {
            //         if (ins.match(regExp) !== null) showInsList.push(ins);
            //     }
            showInsList.push(ins);
            // }
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    complexityByLoc(num: number) {
        const localTopology = this.plainTopology;
        const showInsList = [];

        for (const ins of Object.keys(this.instanceLocDict)) {
            if (this.instanceLocDict[ins] >= num) showInsList.push(ins);
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    complexityByPortNum(num: number) {
        const localTopology = this.plainTopology;
        const showInsList = [];

        for (const ins of Object.keys(this.instanceLocDict)) {
            if (this.instancePortNumDict[ins] >= num) showInsList.push(ins);
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    complexityByConnectedComp(num: number) {
        const localTopology = this.plainTopology;
        const showInsList = [];

        for (const target of this.instanceList) {
            const connectedInsList = [];

            for (const connection of this.topology.connections) {
                const isSamePort = this.isSamePort(connection, target);
                if (isSamePort.boolSamePort) {
                    connectedInsList.push(isSamePort.showIns);
                }
            }

            for (const connectedIns of connectedInsList) {
                const howMany = connectedInsList.filter(
                    (ins) => ins.indexOf(connectedIns) !== -1
                ).length;

                if (howMany >= num) {
                    showInsList.push(connectedIns);
                }
            }
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    complexity(num: number, method: ComplexityMethod) {
        if (method === "LOC") return this.complexityByLoc(num);
        else if (method === "Number of Ports")
            return this.complexityByPortNum(num);
        else if (method === "Number of Connected Components")
            return this.complexityByConnectedComp(num);
        else return ""; // bad error handling
    }

    stdOrSpecific(strStdOrSpecific: StandardOrSpecific) {
        const localTopology = this.plainTopology;
        const showInsList = [];
        let namespaces = [];

        if (strStdOrSpecific === "Standard") namespaces = ["Svc"];
        else if (strStdOrSpecific === "Specific")
            namespaces = ["Ref", "Components"];
        else return ""; // bad error handling

        for (const ins of this.instanceList) {
            if (namespaces.includes(this.instanceNamespaceDict[ins]))
                showInsList.push(ins);
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }

    segment(strGroundOrFlight: GroundOrFlight) {
        const includes_ = (ins: string) => {
            return this.config.segment.ground_segments.includes(ins);
        };

        const not_includes_ = (ins: string) => {
            return !this.config.segment.ground_segments.includes(ins);
        };

        const localTopology = this.plainTopology;
        const showInsList = [];
        let include_func = includes_;

        if (strGroundOrFlight === "Ground") include_func = includes_;
        else if (strGroundOrFlight === "Flight") include_func = not_includes_;
        else return ""; // bad error handling

        for (const ins of this.instanceList) {
            if (include_func(ins)) showInsList.push(ins);
        }

        localTopology.columns = this.getFilteredInstances(showInsList);
        localTopology.connections = this.topology.connections;

        return this.clean(localTopology);
    }
}
