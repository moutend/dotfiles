#!/bin/bash

set -e

go install github.com/moutend/web/cmd/web@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/pelletier/go-toml/v2/cmd/tomljson@latest
go install github.com/pelletier/go-toml/v2/cmd/jsontoml@latest
go install github.com/pelletier/go-toml/v2/cmd/tomll@latest

# go install github.com/moutend/xor/cmd/xor@latest
# go install github.com/moutend/slack/cmd/slack@latest
# go install github.com/moutend/rmdot/cmd/rmdot@latest
# go install github.com/moutend/backlogctl/cmd/backlogctl@latest
