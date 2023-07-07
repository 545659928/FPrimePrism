import { fprimeVisualUrl } from "../components/FPrimeVisual";

export const reloadIframe = (filename: string) => {
    const isIFrame = (input: HTMLElement | null): input is HTMLIFrameElement =>
        input !== null && input.tagName === "IFRAME";

    const iframe = document.getElementById("iframe");
    if (isIFrame(iframe) && iframe.contentWindow) {
        iframe.src = fprimeVisualUrl + "?" + filename;
    }
};

export const downloadFile = (filename: string, data: string) => {
    const blob = new Blob([data]);
    const downloadUrl = URL.createObjectURL(blob);
    const link = document.createElement("a");
    link.href = downloadUrl;
    link.download = filename;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(downloadUrl);
};

export const getKeyFromValue = (
    obj: any, // TEMP: type any
    val: unknown
): string => {
    const found_key = Object.keys(obj).find(
        (key) => JSON.stringify(obj[key]) === JSON.stringify(val)
    );

    // bad error handling
    if (found_key === undefined) return "";
    else return found_key;
};
