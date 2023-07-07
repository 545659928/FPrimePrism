import React from "react";
import { Box, Step, Stepper, StepLabel } from "@mui/material";

const stepList = [
    "Select F' Project",
    "Choose Slicing Method",
    "Input Parameters",
];

type Props = {
    step: number;
};

function HorizontalStepper(props: Props) {
    return (
        <Box sx={{ width: "100%" }}>
            <Stepper activeStep={props.step} alternativeLabel>
                {stepList.map((label) => (
                    <Step key={label}>
                        <StepLabel>{label}</StepLabel>
                    </Step>
                ))}
            </Stepper>
        </Box>
    );
}

export default HorizontalStepper;
