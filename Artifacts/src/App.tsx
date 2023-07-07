import React from "react";
import "./App.css";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import CssBaseline from "@mui/material/CssBaseline";
import Top from "./components/Top";
import { globalContext, useProjectFile } from "./context";

const darkTheme = createTheme({
    palette: {
        mode: "dark",
    },
});

function App() {
    const ctx = useProjectFile();

    return (
        <ThemeProvider theme={darkTheme}>
            <globalContext.Provider value={ctx}>
                <CssBaseline />
                <Top />
            </globalContext.Provider>
        </ThemeProvider>
    );
}

export default App;
