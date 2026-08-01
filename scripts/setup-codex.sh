#!/usr/bin/env bash

set -xeuo pipefail

owner="$(id -un):$(id -gn)"

sudo rm -rf /etc/codex
sudo cp -r $PWD/codex /etc
sudo chown "${owner}" /etc/codex/config.toml
