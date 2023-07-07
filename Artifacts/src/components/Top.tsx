import React from "react";
import { Grid, Paper, Typography } from "@mui/material";
import HorizontalStepper from "./HorizontalStepper";
import ReadTopology from "./ReadTopology";
import FPrimeVisual from "./FPrimeVisual";

function Top() {
    const [step, setStep] = React.useState(0);

    return (
        <Grid container direction="column" spacing={2}>
            <Grid item>
                <Paper elevation={8} sx={{ mt: 1 }}>
                    <Typography variant="h3" sx={{ ml: 5 }}>
                        F`Prism
                    </Typography>
                </Paper>
            </Grid>

            <Grid item sx={{ mb: 3 }}>
                <HorizontalStepper step={step} />
            </Grid>

            {step === 0 ? (
                <Grid item sx={{ mx: 2, mt: -1 }}>
                    <ReadTopology setStep={setStep} />
                </Grid>
            ) : (
                <></>
            )}

            {step !== 0 ? (
                <Grid item sx={{ mx: 2 }}>
                    {step !== 0 ? (
                        <FPrimeVisual step={step} setStep={setStep} />
                    ) : (
                        <></>
                    )}
                </Grid>
            ) : (
                <></>
            )}
        </Grid>
    );
}

export default Top;
