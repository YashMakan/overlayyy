const serviceWorkerVersion = "1694534738";

window.addEventListener("message", (event) => {
  if (event.data?.action === "open_spotify_auth") {
    chrome.tabs.create({
      url: "https://accounts.spotify.com/authorize?response_type=code&client_id=180977e7472e484c8822f5703d2ea3f3&redirect_uri=http://127.0.0.1:5000/auth.html&scope=user-read-playback-state%20user-read-currently-playing"
    });
  }
});