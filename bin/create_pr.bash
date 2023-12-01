#!/bin/bash

gh pr create \
--assignee moutend \
--base develop \
--head update-all-go-mod-files-under-example-directory \
--title "Update all go.mod files under the _example directory" \
--body "I've updated all go.mod files under the _example directory. This commit makes go-wca version to the latest."
