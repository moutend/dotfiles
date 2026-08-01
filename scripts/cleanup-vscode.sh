#!/usr/bin/env bash

set -xeuo pipefail

rm -rf "/Applications/Visual Studio Code.app"
rm -rf "$HOME/Library/Application Support/Code"
rm -rf "$HOME/Library/Caches/com.microsoft.VSCode"
rm -rf "$HOME/Library/Caches/com.microsoft.VSCode.ShipIt"
rm -rf "$HOME/Library/Preferences/com.microsoft.VSCode.plist"
rm -rf "$HOME/Library/Saved Application State/com.microsoft.VSCode.savedState"
