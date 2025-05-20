#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting Overlayyy build process..."

# 0. Define Project Root (assuming script is in root)
PROJECT_ROOT=$(pwd)
RELEASE_DIR="$PROJECT_ROOT/release"
BUILD_WEB_DIR="$PROJECT_ROOT/build/web"

# --- Pre-checks ---
if [ ! -d "$PROJECT_ROOT/release_libs" ]; then
    echo "Error: 'release_libs' folder not found in project root."
    exit 1
fi

# 1. Build using flutter build web --web-renderer html --csp
echo "Step 1: Running flutter build..."
#flutter clean
#flutter pub get
flutter build web --web-renderer html --csp
# flutter build web -t "lib/ui.dart" --web-renderer html --csp

# 2. Create a release folder in root and copy build/web contents
echo "Step 2: Preparing release folder..."
rm -rf "$RELEASE_DIR"
mkdir -p "$RELEASE_DIR"
cp -R "$BUILD_WEB_DIR"/* "$RELEASE_DIR/"
echo "Copied build/web contents to $RELEASE_DIR"

# 3. cp release_libs folder from root to release folder
echo "Step 3: Copying release_libs..."
cp -R "$PROJECT_ROOT/release_libs" "$RELEASE_DIR/"
echo "Copied release_libs to $RELEASE_DIR/release_libs"

# Define index.html path
INDEX_HTML_PATH="$RELEASE_DIR/index.html"

# 4 Fetching the updated serviceWorkerVersion
echo "Step 4: Fetching the updated serviceWorkerVersion"
SERVICE_WORKER_VERSION=$(sed -n 's/.*const serviceWorkerVersion = "\([^"]*\)".*/\1/p' "$INDEX_HTML_PATH")
echo "Extracted serviceWorkerVersion: $SERVICE_WORKER_VERSION"

# 5 Updating index.html
echo "Step 5: Updating index.html..."
cat <<EOL > "$RELEASE_DIR/index.html"
<!DOCTYPE html>
<html>
<head>
  <base href="/">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="overlayyy">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <link rel="icon" type="image/png" href="favicon.png"/>

  <title>overlayyy</title>

  <script src="release_libs/init0.js" defer></script>
  <script src="flutter.js" defer></script>
</head>
<body>
<script src="release_libs/init1.js" defer></script>
</body>
</html>
EOL
echo "Updated the index.html in $RELEASE_DIR"

# 6. Update release/release_libs/init0.js
INIT0_JS_PATH="$RELEASE_DIR/release_libs/init0.js"

if [ -f "$INIT0_JS_PATH" ]; then
  sed -i '' "s/UPDATE_SERVICE_WORKER_VERSION/$SERVICE_WORKER_VERSION/g" "$INIT0_JS_PATH"
  echo "Updated serviceWorkerVersion in init0.js"
else
  echo "Warning: $INIT0_JS_PATH not found"
fi

# 6. Overwrite manifest.json
echo "Step 6: Updating manifest.json..."
cat <<EOL > "$RELEASE_DIR/manifest.json"
{
  "manifest_version": 3,
  "name": "Overlayyy",
  "version": "0.1.0",
  "description": "Overlayyy: Spotify mini PIP player with realtime lyrics",
  "permissions": [
    "activeTab",
    "scripting"
  ],
  "host_permissions": [
    "http://localhost:8081/*",
    "http://127.0.0.1:8081/*"
  ],
  "action": {
    "default_title": "Overlayyy"
  },
  "background": {
    "service_worker": "release_libs/background.js"
  },
  "content_scripts": [
    {
      "matches": [
        "*://*.spotify.com/*"
      ],
      "js": [
        "release_libs/pip_content_script.js",
        "release_libs/handle.js"
      ],
      "css": [
        "release_libs/handle.css"
      ]
    }
  ],
  "web_accessible_resources": [
    {
      "resources": [
        "index.html",
        "main.dart.js",
        "flutter.js",
        "assets/*"
      ],
      "matches": [
        "*://*.spotify.com/*"
      ]
    }
  ]
}
EOL
echo "Created new manifest.json in $RELEASE_DIR"

echo "Your extension is ready in the '$RELEASE_DIR' folder."
