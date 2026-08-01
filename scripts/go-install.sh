#!/usr/bin/env bash

set -xeuo pipefail

go install golang.org/x/tools/cmd/goimports@latest
go install github.com/moutend/cspeak/cmd/cspeak@latest
go install github.com/moutend/ok@latest
go install github.com/moutend/r2d@latest
go install github.com/moutend/web/cmd/web@latest
