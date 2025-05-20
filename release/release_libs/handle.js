// Create the handle element
const handle = document.createElement('div');
handle.id = 'honey-handle';

// Create menu icon
const menuIcon = document.createElement('div');
menuIcon.className = 'menu-icon';
for (let i = 0; i < 3; i++) {
  const bar = document.createElement('div');
  bar.className = 'bar';
  menuIcon.appendChild(bar);
}

// --- Create the 'O' SVG Logo ---
function createO() {
  const svgNS = "http://www.w3.org/2000/svg";
  const svg = document.createElementNS(svgNS, "svg");
  svg.setAttribute("viewBox", "0 0 64 64");
  svg.setAttribute("width", "24"); // Adjust size as needed
  svg.setAttribute("height", "24"); // Adjust size as needed
  svg.style.fillRule = "evenodd"; // For the cutout

  const defs = document.createElementNS(svgNS, "defs");
  const gradient = document.createElementNS(svgNS, "linearGradient");
  gradient.setAttribute("id", "spotifyGreenGradient");
  gradient.setAttribute("x1", "0%");
  gradient.setAttribute("y1", "0%");
  gradient.setAttribute("x2", "80%");
  gradient.setAttribute("y2", "100%");

  const stop1 = document.createElementNS(svgNS, "stop");
  stop1.setAttribute("offset", "0%");
  stop1.setAttribute("stop-color", "#59F38C"); // Lighter highlight

  const stop2 = document.createElementNS(svgNS, "stop");
  stop2.setAttribute("offset", "100%");
  stop2.setAttribute("stop-color", "#1DB954"); // Primary Spotify Green

  gradient.appendChild(stop1);
  gradient.appendChild(stop2);
  defs.appendChild(gradient);
  svg.appendChild(defs);

  const path = document.createElementNS(svgNS, "path");
  path.setAttribute("fill", "url(#spotifyGreenGradient)");
  path.setAttribute(
    "d",
    "M 58.5,21.5 A 26,26 0 1 0 21.5,58.5 A 26,26 0 0 0 52,15 Q 57,17 58.5,21.5 Z M 47,32 A 15,15 0 1 1 17,32 A 15,15 0 1 1 47,32 Z"
  );
  svg.appendChild(path);
  return svg;
}

const oLogo = createO(); // Create the new SVG logo

// Append icon and logo to the handle
handle.appendChild(menuIcon);
handle.appendChild(oLogo);

// Append the handle to the body
document.body.appendChild(handle);

// --- Draggable Logic (Identical to your previous correct version) ---
let isDragging = false;
let offsetY = 0;

function setInitialPosition() {
  handle.style.right = '0px';
  handle.style.left = '';
  handle.style.top = '40%';
  handle.style.bottom = '';
  handle.style.borderTopLeftRadius = '20px';
  handle.style.borderBottomLeftRadius = '20px';
  handle.style.borderTopRightRadius = '0px';
  handle.style.borderBottomRightRadius = '0px';
}

function moveHandleOnRightEdge(mouseY) {
  const handleRect = handle.getBoundingClientRect();
  const windowHeight = window.innerHeight;
  let targetY = mouseY - offsetY;
  targetY = Math.max(0, Math.min(targetY, windowHeight - handleRect.height));
  handle.style.top = `${targetY}px`;
  handle.style.right = '0px';
  handle.style.left = '';
  handle.style.bottom = '';
}

let dragStartTime = 0;
let startX = 0;
let startY = 0;
const DRAG_THRESHOLD = 5;
const CLICK_TIME_THRESHOLD = 200;

handle.addEventListener('mousedown', (e) => {
  if (e.button !== 0) return;
  isDragging = true;
  dragStartTime = Date.now();
  startX = e.clientX;
  startY = e.clientY;
  const rect = handle.getBoundingClientRect();
  offsetY = e.clientY - rect.top;
  handle.style.cursor = 'grabbing';
  e.preventDefault();
});

document.addEventListener('mousemove', (e) => {
  if (!isDragging) return;
  moveHandleOnRightEdge(e.clientY);
});

document.addEventListener('mouseup', (e) => {
  if (!isDragging) return;
  isDragging = false;
  handle.style.cursor = 'grab';
  const endTime = Date.now();
  const timeDiff = endTime - dragStartTime;
  const moveX = Math.abs(e.clientX - startX);
  const moveY = Math.abs(e.clientY - startY);
  const isClick = moveX < DRAG_THRESHOLD && moveY < DRAG_THRESHOLD && timeDiff < CLICK_TIME_THRESHOLD;
  if (isClick) {
    console.log("Handle Clicked!");
    if (typeof window.launchFlutterPiP === "function") {
      window.launchFlutterPiP();
    } else {
      console.warn("launchFlutterPiP is not defined yet.");
    }
  }
});

setInitialPosition();

window.addEventListener('resize', () => {
  if (!isDragging) {
    const handleRect = handle.getBoundingClientRect();
    const windowHeight = window.innerHeight;
    let currentTop = parseFloat(handle.style.top);
    if (handle.style.top.includes('%')) {
        currentTop = (parseFloat(handle.style.top) / 100) * windowHeight;
    }
    let newTop = Math.max(0, Math.min(currentTop, windowHeight - handleRect.height));
    handle.style.top = `${newTop}px`;
    handle.style.right = '0px';
    handle.style.left = '';
    handle.style.bottom = '';
  }
});