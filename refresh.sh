#!/usr/bin/env bash

# Exit script on any error
set -e
# Treat unset variables as an error
# set -u # Be cautious with this, might need to check all variables are set explicitly
# Ensure pipeline errors are propagated
set -o pipefail

# --- Configuration ---
SPOTIFY_REFRESH_TOKEN=""

# These are from your example curl command
SPOTIFY_CLIENT_ID=""
SPOTIFY_CLIENT_SECRET=""

ENV_FILE=".env"
ENV_TOKEN_KEY="ACCESS_TOKEN"
# --- End Configuration ---

# Check for dependencies
if ! command -v jq &> /dev/null; then
    echo "❌ Error: 'jq' command is not installed. Please install it to parse JSON."
    echo "   On macOS: brew install jq"
    echo "   On Debian/Ubuntu: sudo apt-get install jq"
    exit 1
fi

if ! command -v curl &> /dev/null; then
    echo "❌ Error: 'curl' command is not installed."
    exit 1
fi

if ! command -v flutter &> /dev/null; then
    echo "⚠️ Warning: 'flutter' command is not installed or not in PATH. Flutter steps will fail."
fi


echo "🔑 Encoding Spotify Client ID and Secret..."
ENCODED_CLIENT_CREDENTIALS=$(echo -n "${SPOTIFY_CLIENT_ID}:${SPOTIFY_CLIENT_SECRET}" | base64)

echo "🔄 Requesting new access token from Spotify..."
# Use -s for silent, -f for fail fast (HTTP errors), -S to show errors if -s is also used
RESPONSE=$(curl -sfS -X POST https://accounts.spotify.com/api/token \
  -H "Authorization: Basic ${ENCODED_CLIENT_CREDENTIALS}" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "grant_type=refresh_token&refresh_token=${SPOTIFY_REFRESH_TOKEN}")

if [ $? -ne 0 ]; then
    echo "❌ Error: curl command failed to get a new token."
    # The error message from curl -S should already be on stderr
    exit 1
fi

NEW_ACCESS_TOKEN=$(echo "${RESPONSE}" | jq -r '.access_token')

if [ -z "${NEW_ACCESS_TOKEN}" ] || [ "${NEW_ACCESS_TOKEN}" == "null" ]; then
  echo "❌ Error: Could not extract access token from Spotify's response."
  echo "Spotify API Response:"
  echo "${RESPONSE}"
  exit 1
fi

echo "✅ New access token obtained successfully."
# echo "   New Token: ${NEW_ACCESS_TOKEN}" # Uncomment for debugging

echo "📝 Updating ${ENV_TOKEN_KEY} in ${ENV_FILE}..."
if [ ! -f "${ENV_FILE}" ]; then
    echo "   ${ENV_FILE} not found. Creating it."
    touch "${ENV_FILE}"
fi

# Use awk to update or append the line, writing to a temp file then replacing
# This is robust and portable
awk -v key="${ENV_TOKEN_KEY}" -v value="${NEW_ACCESS_TOKEN}" '
    BEGIN { found=0 }
    $0 ~ "^" key "=" {
        print key "=" value;
        found=1;
        next;
    }
    { print }
    END {
        if (!found) {
            print key "=" value;
        }
    }
' "${ENV_FILE}" > "${ENV_FILE}.tmp" && mv "${ENV_FILE}.tmp" "${ENV_FILE}"

echo "✅ ${ENV_FILE} updated."

echo "🧹 Running flutter clean..."
flutter clean

echo "📦 Running flutter pub run build_runner build..."
flutter pub run build_runner build --delete-conflicting-outputs

if [ -f "./build.sh" ]; then
    echo "🚀 Running ./build.sh..."
    if [ ! -x "./build.sh" ]; then
        echo "   Making ./build.sh executable..."
        chmod +x ./build.sh
    fi
    ./build.sh
else
    echo "⚠️ ./build.sh not found. Skipping this step."
fi

echo "🎉 Refresh and build process completed successfully!"