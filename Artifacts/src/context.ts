import React from "react";

type ProjectFile = {
    filepath: string;
    content: string;
    loc: number;
};

type GlobalContext = {
    projectFileList: Array<ProjectFile>;
    setProjectFileList: (arg: Array<ProjectFile>) => void;
};

const initialState: GlobalContext = {
    projectFileList: [],
    setProjectFileList: () => {
        /**/
    },
};

export const globalContext = React.createContext<GlobalContext>(initialState);

export const useProjectFile = (): GlobalContext => {
    const [projectFileList, setProjectFileListWrapped] = React.useState(
        initialState.projectFileList
    );

    const setProjectFileList = React.useCallback(
        (current: Array<ProjectFile>): void => {
            setProjectFileListWrapped(current);
        },
        []
    );

    return { projectFileList, setProjectFileList };
};
