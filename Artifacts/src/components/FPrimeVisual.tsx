import React from "react";
import {
    Button,
    Checkbox,
    FormControl,
    FormControlLabel,
    Grid,
    InputLabel,
    ListItemText,
    MenuItem,
    Input,
    Select,
    SelectChangeEvent,
    TextField,
    Radio,
    RadioGroup,
} from "@mui/material";
import useInterval from "use-interval";
import { useWindowSize, WindowSize } from "../utils/useWindowSize";
import {
    ComplexityMethod,
    CouplingMethod,
    Slicing,
    StandardOrSpecific,
    GroundOrFlight,
} from "../utils/handleSlicing";
import { reloadIframe, downloadFile } from "../utils/utils";

// param
export const fprimeVisualUrl = "http://localhost:3000/";
const iframeScreenRatio = 0.9;
const sxMenuItem = { height: 35 };

// slicing
type SlicingCriterion = "" | "Architecture-General" | "Spaceflight-Specific";

type SlicingMethod =
    | ""
    | "Manual"
    | "Coupling"
    | "Complexity"
    | "Telecommand"
    | "Segment"
    | "Standard or Specific";

const slicingCriterionList: Array<SlicingCriterion> = [
    "",
    "Architecture-General",
    "Spaceflight-Specific",
];

const agSlicingMethodList: Array<SlicingMethod> = [
    "",
    "Manual",
    "Coupling",
    "Complexity",
];

const msSlicingMethodList: Array<SlicingMethod> = [
    "",
    "Telecommand",
    "Segment",
    "Standard or Specific",
];

type Props = {
    step: number;
    setStep: React.Dispatch<React.SetStateAction<number>>;
};

function FPrimeVisual(props: Props) {
    const { windowWidth, windowHeight }: WindowSize = useWindowSize();

    // make sure params got updated
    const [greenLigth, setGreenLight] = React.useState(false);
    useInterval(() => {
        if (greenLigth) {
            let data: string;

            if (slicingMethod === "Manual")
                data = slicing.manual(selectedInstanceList);
            else if (slicingMethod === "Coupling")
                data = slicing.coupling(
                    couplingTarget,
                    Number(couplingNum),
                    couplingMethod as CouplingMethod
                );
            else if (slicingMethod === "Telecommand")
                data = slicing.telecommand(telecommandTarget);
            else if (slicingMethod === "Complexity")
                data = slicing.complexity(
                    Number(complexityNum),
                    complexityMethod as ComplexityMethod
                );
            else if (slicingMethod === "Standard or Specific")
                data = slicing.stdOrSpecific(
                    stdOrSpecific as StandardOrSpecific
                );
            else if (slicingMethod === "Segment")
                data = slicing.segment(groundOrFlight as GroundOrFlight);
            else data = "";

            updateView(data);
            setGreenLight(false);
        }
    }, 1000);

    // slicing
    const slicing = new Slicing();

    const [slicingCriterion, setSlicingCriterion] =
        React.useState<SlicingCriterion>("");
    const handleChangeSlicingCriterion = (event: SelectChangeEvent) => {
        setSlicingCriterion(event.target.value as SlicingCriterion);
    };

    const [slicingMethod, setSlicingMethod] = React.useState<SlicingMethod>("");
    const handleChangeSlicingMethod = (event: SelectChangeEvent) => {
        setSlicingMethod(event.target.value as SlicingMethod);
        props.setStep(2);
    };

    // manual slicing
    const [selectedInstanceList, setSelectedInstanceList] = React.useState<
        string[]
    >(slicing.instanceList);
    const handleChangeSelectedInstanceList = (
        event: SelectChangeEvent<typeof selectedInstanceList>
    ) => {
        const {
            target: { value },
        } = event;
        setSelectedInstanceList(
            typeof value === "string" ? value.split(",") : value
        );
        setGreenLight(true);
    };

    const manualSlicingParam = (
        <FormControl variant="standard" sx={{ m: 1, minWidth: 250 }}>
            <InputLabel>Show / Hide</InputLabel>
            <Select
                multiple
                value={selectedInstanceList}
                onChange={handleChangeSelectedInstanceList}
                input={<Input />}
                renderValue={(selected) => selected.length + " selected"}
                MenuProps={{
                    PaperProps: {
                        style: {
                            maxHeight: 400,
                            width: 250,
                        },
                    },
                }}
            >
                {slicing.instanceList.map((ins, idx) => (
                    <MenuItem value={ins} key={idx} sx={sxMenuItem}>
                        <Checkbox
                            size="small"
                            checked={selectedInstanceList.indexOf(ins) > -1}
                        />
                        <ListItemText primary={ins} />
                    </MenuItem>
                ))}
            </Select>
        </FormControl>
    );
    // end; manual slicing

    // coupling slicing
    const [couplingTarget, setCouplingTarget] = React.useState("");
    const [couplingNum, setCouplingNum] = React.useState("");
    const [couplingMethod, setCouplingMethod] = React.useState("");

    const couplingSlicingParam = (
        <Grid container direction="row" spacing={2}>
            <Grid item>
                <FormControl variant="standard" sx={{ minWidth: 150 }}>
                    <InputLabel>Target</InputLabel>
                    <Select
                        value={couplingTarget}
                        onChange={(event) =>
                            setCouplingTarget(event.target.value as string)
                        }
                        input={<Input />}
                    >
                        {slicing.instanceList.map((ins, idx) => (
                            <MenuItem value={ins} key={idx} sx={sxMenuItem}>
                                {ins}
                            </MenuItem>
                        ))}
                    </Select>
                </FormControl>
            </Grid>

            <Grid item>
                <TextField
                    variant="standard"
                    label="n (or more)"
                    sx={{ maxWidth: 100 }}
                    value={couplingNum}
                    onChange={(event: React.ChangeEvent<HTMLInputElement>) => {
                        if (!isNaN(Number(event.target.value))) {
                            setCouplingNum(event.target.value);
                        }
                    }}
                />
            </Grid>

            <Grid item>
                <FormControl variant="standard" sx={{ minWidth: 150 }}>
                    <InputLabel>Filter by</InputLabel>
                    <Select
                        value={couplingMethod}
                        onChange={(event) =>
                            setCouplingMethod(event.target.value as string)
                        }
                        input={<Input />}
                    >
                        {slicing.couplingMethods.map((method, idx) => (
                            <MenuItem value={method} key={idx} sx={sxMenuItem}>
                                {method}
                            </MenuItem>
                        ))}
                    </Select>
                </FormControl>
            </Grid>

            <Grid item sx={{ mt: 2, mr: 3 }}>
                <Button
                    variant="outlined"
                    onClick={() => {
                        if (
                            couplingTarget !== "" &&
                            couplingNum !== "" &&
                            couplingMethod !== ""
                        ) {
                            setGreenLight(true);
                        }
                    }}
                >
                    SLICE
                </Button>
            </Grid>
        </Grid>
    );
    // end; coupling slicing

    // telecommand slicing
    const [telecommandTarget, setTelecommandTarget] = React.useState("");
    const telecommandSlicingParam = (
        <FormControl variant="standard" sx={{ minWidth: 150 }}>
            <InputLabel>Target</InputLabel>
            <Select
                value={telecommandTarget}
                onChange={(event) => {
                    setTelecommandTarget(event.target.value as string);
                    setGreenLight(true);
                }}
                input={<Input />}
            >
                {slicing.telecommandList.map((cmd, idx) => (
                    <MenuItem value={cmd} key={idx} sx={sxMenuItem}>
                        {cmd}
                    </MenuItem>
                ))}
            </Select>
        </FormControl>
    );
    // end; telecommand slicing

    // complexity slicing
    const [complexityNum, setComplexityNum] = React.useState("");
    const [complexityMethod, setComplexityMethod] = React.useState("");
    const complexityParam = (
        <Grid container direction="row" spacing={2}>
            <Grid item>
                <TextField
                    variant="standard"
                    label="n (or more)"
                    sx={{ maxWidth: 100 }}
                    value={complexityNum}
                    onChange={(event: React.ChangeEvent<HTMLInputElement>) => {
                        if (!isNaN(Number(event.target.value))) {
                            setComplexityNum(event.target.value);
                        }
                    }}
                />
            </Grid>

            <Grid item>
                <FormControl variant="standard" sx={{ minWidth: 150 }}>
                    <InputLabel>Filter by</InputLabel>
                    <Select
                        value={complexityMethod}
                        onChange={(event) =>
                            setComplexityMethod(event.target.value as string)
                        }
                        input={<Input />}
                    >
                        {slicing.complexityMethods.map((method, idx) => (
                            <MenuItem value={method} key={idx} sx={sxMenuItem}>
                                {method}
                            </MenuItem>
                        ))}
                    </Select>
                </FormControl>
            </Grid>

            <Grid item sx={{ mt: 2, mr: 3 }}>
                <Button
                    variant="outlined"
                    onClick={() => {
                        if (complexityMethod !== "") setGreenLight(true);
                    }}
                >
                    SLICE
                </Button>
            </Grid>
        </Grid>
    );
    // end; complexity slicing

    // segment slicing
    const [groundOrFlight, setGroundOrFlight] = React.useState("");
    const segmentSlicingParam = (
        <FormControl>
            <RadioGroup
                onChange={(event: React.ChangeEvent<HTMLInputElement>) => {
                    setGroundOrFlight(event.target.value);
                    setGreenLight(true);
                }}
            >
                <FormControlLabel
                    value="Ground"
                    control={<Radio />}
                    label="Ground"
                />
                <FormControlLabel
                    value="Flight"
                    control={<Radio />}
                    label="Flight"
                />
            </RadioGroup>
        </FormControl>
    );
    // end; segment slicing

    // standard or specific
    const [stdOrSpecific, setStdOrSpecific] = React.useState("");
    const stdSpecificParam = (
        <FormControl>
            <RadioGroup
                onChange={(event: React.ChangeEvent<HTMLInputElement>) => {
                    setStdOrSpecific(event.target.value);
                    setGreenLight(true);
                }}
            >
                <FormControlLabel
                    value="Standard"
                    control={<Radio />}
                    label="Standard"
                />
                <FormControlLabel
                    value="Specific"
                    control={<Radio />}
                    label="Specific"
                />
            </RadioGroup>
        </FormControl>
    );
    // end; standard or specific

    const slicingMethodParamDict: {
        [key in SlicingMethod]: React.ReactNode;
    } = {
        "": <></>,
        Manual: manualSlicingParam,
        Coupling: couplingSlicingParam,
        Complexity: complexityParam,
        Telecommand: telecommandSlicingParam,
        Segment: segmentSlicingParam,
        "Standard or Specific": stdSpecificParam,
    };

    // inputHeader

    const slicingCriterionSelector = (
        <FormControl variant="standard" sx={{ m: 1, minWidth: 150 }}>
            <InputLabel>Slicing Criterion</InputLabel>
            <Select
                value={slicingCriterion}
                onChange={handleChangeSlicingCriterion}
            >
                {slicingCriterionList.slice(1).map((slicingCriterion, idx) => {
                    return (
                        <MenuItem value={slicingCriterion} key={idx}>
                            {slicingCriterion}
                        </MenuItem>
                    );
                })}
            </Select>
        </FormControl>
    );

    const slicingMethodSelector = (
        <FormControl variant="standard" sx={{ m: 1, minWidth: 150 }}>
            <InputLabel>Slicing Method</InputLabel>
            <Select
                value={slicingMethod}
                onChange={handleChangeSlicingMethod}
                disabled={slicingCriterion === ""}
            >
                {slicingCriterion === "Architecture-General"
                    ? agSlicingMethodList.slice(1).map((slicingMethod, idx) => {
                          return (
                              <MenuItem value={slicingMethod} key={idx}>
                                  {slicingMethod}
                              </MenuItem>
                          );
                      })
                    : msSlicingMethodList.slice(1).map((slicingMethod, idx) => {
                          return (
                              <MenuItem value={slicingMethod} key={idx}>
                                  {slicingMethod}
                              </MenuItem>
                          );
                      })}
            </Select>
        </FormControl>
    );

    const resetButton = (
        <Button
            variant="outlined"
            color="secondary"
            onClick={() => props.setStep(0)}
        >
            RESET
        </Button>
    );

    // show whole topology firstly
    React.useEffect(() => {
        const data = slicing.getTopology();
        updateView(data);
    }, []);

    const updateView = (data: string) => {
        const date = new Date();
        const filename = String(date.getTime()) + ".json";
        downloadFile(filename, data);
        reloadIframe(filename);
    };

    const inputHeader = (
        <Grid container direction="row" spacing={2} alignItems="center">
            <Grid item sx={{ flexGrow: 1 }}>
                {slicingCriterionSelector}
            </Grid>

            <Grid item sx={{ flexGrow: 1 }}>
                {slicingMethodSelector}
            </Grid>

            {props.step === 2 ? (
                <Grid item sx={{ flexGrow: 1 }}>
                    {slicingMethodParamDict[slicingMethod]}
                </Grid>
            ) : (
                <></>
            )}

            <Grid item sx={{ mt: 2, mr: 3 }}>
                {resetButton}
            </Grid>
        </Grid>
    );

    return (
        <Grid container direction="column" alignItems="center">
            <Grid item>{inputHeader}</Grid>

            <Grid item sx={{ my: 1 }}></Grid>

            <Grid item sx={{ mb: 3 }} style={{ overflow: "hidden" }}>
                <iframe
                    src={fprimeVisualUrl}
                    width={windowWidth * iframeScreenRatio}
                    height={windowHeight * iframeScreenRatio}
                    id="iframe"
                    style={{
                        marginTop: "-50px",
                        zIndex: 999999,
                    }}
                />
            </Grid>
        </Grid>
    );
}

export default FPrimeVisual;
