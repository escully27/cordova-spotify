#!/usr/bin/env bash

SDK_INSTALL_PATH="plugins/cordova-spotify/src/android/spotify-sdk"
SDK_DOWNLOAD_PATH="https://github.com/spotify/android-sdk/releases/download/v0.7.2-appremote_v1.2.3-auth/spotify-app-remote-release-0.7.2.aar"

if [ ! -d "$SDK_INSTALL_PATH" ]; then
    mkdir -p "$SDK_INSTALL_PATH"
    curl -LsS $SDK_DOWNLOAD_PATH | tar -xz -C "$SDK_INSTALL_PATH" --strip 1
else
    echo "Skipping streaming SDK download since it's alredy there."
fi
