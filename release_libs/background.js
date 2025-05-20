// background.js

chrome.action.onClicked.addListener(async (tab) => {
  if (!tab.id) {
    console.error("Overlayyy PiP: Tab ID is missing. Cannot inject script.");
    return;
  }

  try {
    // First, inject the script (only once per page)
    await chrome.scripting.executeScript({
      target: { tabId: tab.id },
      files: ['release_libs/pip_content_script.js']
    });

    // Now invoke the function defined in the injected script
    await chrome.scripting.executeScript({
      target: { tabId: tab.id },
      func: () => {
        if (typeof window.launchFlutterPiP === 'function') {
          window.launchFlutterPiP();
        } else {
          console.warn("Overlayyy PiP: launchFlutterPiP is not defined.");
        }
      }
    });

  } catch (err) {
    console.error("Overlayyy PiP: Failed to execute content script. Ensure 'activeTab' and 'scripting' permissions are set.", err);
  }
});

chrome.runtime.onInstalled.addListener(() => {
  console.log("Overlayyy PiP Extension Installed/Updated.");
});
