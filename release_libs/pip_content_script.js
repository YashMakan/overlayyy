// pip_content_script.js
window.launchFlutterPiP = async () => {
  if (window.flutterPipWindow && !window.flutterPipWindow.closed) {
    try {
      window.flutterPipWindow.focus();
      console.log("Overlayyy PiP: Window already open, focusing.");
      return;
    } catch (e) {
      window.flutterPipWindow = null;
    }
  }

  if (!("documentPictureInPicture" in window)) {
    console.error("Overlayyy PiP: Document Picture-in-Picture API is not supported.");
    alert("The Document Picture-in-Picture API is not supported in your browser.");
    return;
  }

  try {
    const pipWidth = 400;
    const pipHeight = 350;

    const pipWindow = await documentPictureInPicture.requestWindow({
      width: pipWidth,
      height: pipHeight,
      allowReturnToTab: false
    });

    window.flutterPipWindow = pipWindow;

    const iframe = pipWindow.document.createElement('iframe');
    const flutterAppUrl = chrome.runtime.getURL('./index.html');

    iframe.src = flutterAppUrl;
    iframe.style.width = '100%';
    iframe.style.height = '100%';
    iframe.style.border = 'none';
    iframe.style.margin = '0';
    iframe.style.padding = '0';
    iframe.style.display = 'block';

    pipWindow.document.body.append(iframe);
    pipWindow.document.documentElement.style.margin = '0';
    pipWindow.document.documentElement.style.padding = '0';
    pipWindow.document.documentElement.style.height = '100%';
    pipWindow.document.body.style.margin = '0';
    pipWindow.document.body.style.padding = '0';
    pipWindow.document.body.style.height = '100%';
    pipWindow.document.body.style.overflow = 'hidden';

    console.log("Overlayyy PiP: Flutter app loaded into PiP window.", pipWindow);
    console.log("Overlayyy PiP: Iframe source:", iframe.src);

    pipWindow.addEventListener("pagehide", () => {
      console.log("Overlayyy PiP: Window closed.");
      if (window.flutterPipWindow === pipWindow) {
        window.flutterPipWindow = null;
      }
    });

  } catch (error) {
    console.error("Overlayyy PiP: Error creating PiP window:", error);
    if (error.name === 'NotAllowedError') {
      alert("Overlayyy PiP: Could not open Picture-in-Picture window. This might be due to browser settings or lack of user interaction.");
    } else if (error.message.includes("disallowReturnToOpener")) {
      alert("Overlayyy PiP: The 'disallowReturnToOpener' option might not be supported in your browser version. Try updating Chrome.");
    } else {
      alert(`Overlayyy PiP: Error creating Picture-in-Picture window: ${error.message}`);
    }
  }
};
