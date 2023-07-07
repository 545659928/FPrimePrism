import React from "react";
import { Backdrop, CircularProgress, Stack } from "@mui/material";

type Props = {
    whatURwating4: string;
    openCircularProgress: boolean;
    childComp?: React.ReactElement;
};

function CircularProgressWithText(props: Props) {
    return (
        <Backdrop
            open={props.openCircularProgress}
            sx={{ color: "#fff", zIndex: (theme) => theme.zIndex.drawer + 1 }}
        >
            <Stack direction="row" spacing={3}>
                <Stack direction="row" spacing={1}>
                    <CircularProgress color="inherit" />
                    <h2>{props.whatURwating4}</h2>
                </Stack>
                {props.childComp}
            </Stack>
        </Backdrop>
    );
}

export default CircularProgressWithText;
