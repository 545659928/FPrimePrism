import React, { useState } from "react";

export type WindowSize = {
    windowWidth: number;
    windowHeight: number;
};

export function useWindowSize() {
    const [size, setSize] = React.useState<WindowSize>({
        windowWidth: 0,
        windowHeight: 0,
    });

    React.useLayoutEffect(() => {
        function updateSize() {
            setSize({
                windowWidth: window.innerWidth,
                windowHeight: window.innerHeight,
            });
        }

        window.addEventListener("resize", updateSize);
        updateSize();
        return () => {
            window.removeEventListener("resize", updateSize);
        };
    }, []);

    return size;
}
