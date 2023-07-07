import React from "react";
import {
    Alert,
    Button,
    Grid,
    Paper,
    Snackbar,
    Stack,
    Typography,
} from "@mui/material";
import DownloadIcon from "@mui/icons-material/Download";
import { useDropzone, FileWithPath } from "react-dropzone";
import useInterval from "use-interval";
import CircularProgressWithText from "./CircularProgressWithText";
import { globalContext } from "../context";

const expectedExtensions = ["cpp", "hpp", "xml", "json"];

const dragActiveMessage = (
    <Stack direction="row" spacing={1}>
        <DownloadIcon fontSize="large" />
    </Stack>
);

const dragAndDropFileMessage = (
    <Typography variant="body1" align="center">
        Drop project here!
    </Typography>
);

type Props = {
    setStep: React.Dispatch<React.SetStateAction<number>>;
};

function ReadTopology(props: Props) {
    const ctx = React.useContext(globalContext);

    // make sure ctx got updated
    const [greenLigth, setGreenLight] = React.useState(false);
    useInterval(() => {
        if (greenLigth) {
            setOpenCircularProgress(false);
            props.setStep(1);
        }
    }, 2000);

    // error message
    const [errorMessage, setErrorMessage] = React.useState("");
    const [openSnackBar, setOpenSnackBar] = React.useState(false);
    const handleCloseSnackBar = (
        event?: React.SyntheticEvent | Event,
        reason?: string
    ) => {
        if (reason === "clickaway") {
            return;
        }
        setOpenSnackBar(false);
    };
    const [openCircularProgress, setOpenCircularProgress] =
        React.useState(false);

    // folder picker
    const onDrop = React.useCallback((acceptedFiles: FileWithPath[]) => {
        setOpenCircularProgress(true);

        acceptedFiles.forEach((file) => {
            const reader = new FileReader();
            const strExtension = file.path?.split(".").pop();

            if (strExtension === undefined) {
                setErrorMessage("File reading aborted");
                setOpenSnackBar(true);
                return;
            } else {
                // ( ! ) No error handling
                // console.log(strExtension);
                // const errMsg = "Only JSON file is allowed";
                // setErrorMessage(errMsg);
                // setOpenSnackBar(true);
                // return;

                reader.onabort = () => {
                    setErrorMessage("File reading aborted");
                    setOpenSnackBar(true);
                };
                reader.onerror = () => {
                    setErrorMessage("File reading failed");
                    setOpenSnackBar(true);
                };

                reader.onload = async () => {
                    addFile(file, reader.result);
                };

                reader.readAsArrayBuffer(file);
            }
        });

        setGreenLight(true);
    }, []);

    const addFile = (
        file: FileWithPath,
        binaryStr: string | ArrayBuffer | null
    ) => {
        if (binaryStr instanceof ArrayBuffer && file.path !== undefined) {
            const extension = file.path.split(".").slice(-1)[0];
            if (expectedExtensions.includes(extension)) {
                const str = new TextDecoder().decode(binaryStr);

                const projectFileListTmp = ctx.projectFileList;
                projectFileListTmp.push({
                    filepath: file.path,
                    loc: str.split("\n").length,
                    content: str,
                });

                ctx.setProjectFileList(projectFileListTmp);
            }
        } else {
            /* */
        }
    };

    const { getRootProps, getInputProps, isDragActive } = useDropzone({
        onDrop,
    });

    const filePickerComponent = (
        <div
            {...getRootProps({
                onClick: (event) => event.stopPropagation(),
            })}
        >
            <Paper elevation={2}>
                <Grid
                    container
                    direction="column"
                    alignItems="center"
                    justifyContent="center"
                    sx={{
                        height: 120,
                        border: "1px dashed grey",
                    }}
                >
                    <input {...getInputProps()} />
                    {isDragActive ? (
                        <div>{dragActiveMessage}</div>
                    ) : (
                        <div>{dragAndDropFileMessage}</div>
                    )}
                </Grid>
            </Paper>
        </div>
    );

    return (
        <Grid container direction="column" spacing={4}>
            <div>
                <Snackbar
                    open={openSnackBar}
                    onClose={handleCloseSnackBar}
                    autoHideDuration={5000}
                    anchorOrigin={{
                        vertical: "bottom",
                        horizontal: "center",
                    }}
                >
                    <Alert onClose={handleCloseSnackBar} severity="error">
                        {errorMessage}
                    </Alert>
                </Snackbar>

                <CircularProgressWithText
                    openCircularProgress={openCircularProgress}
                    whatURwating4="Loading..."
                />
            </div>

            <Grid item>{filePickerComponent}</Grid>
        </Grid>
    );
}

export default ReadTopology;
