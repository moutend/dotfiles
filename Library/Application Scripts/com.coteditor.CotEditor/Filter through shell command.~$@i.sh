#!/usr/bin/env bash
#%%%{CotEditorXInput=AllText}%%%
#%%%{CotEditorXOutput=ReplaceAllText}%%%

set -u

export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

tmp_in="$(mktemp -t coteditor-filter-in)"
tmp_out="$(mktemp -t coteditor-filter-out)"
tmp_err="$(mktemp -t coteditor-filter-err)"

cleanup() {
  rm -rf "$tmp_in" "$tmp_out" "$tmp_err"
}

trap cleanup EXIT

cat > "$tmp_in"

if ! user_command="$(/usr/bin/osascript <<'APPLESCRIPT'
  display dialog "Enter the shell command to run on the entire text being edited." default answer "wc -l" buttons {"Cancel", "OK"} default button "OK" cancel button "Cancel"
  text returned of result
APPLESCRIPT
)"; then
  cat "$tmp_in"
  exit 0
fi

if [ -z "${user_command//[[:space:]]/}" ]; then
  cat "$tmp_in"
  exit 0
fi

if /bin/bash -o pipefail -c "$user_command" < "$tmp_in" > "$tmp_out" 2> "$tmp_err"; then
  cat "$tmp_out"
else
  status=$?
  err="$(head -c 4096 "$tmp_err")"
  message="$(printf 'The shell command failed.\nExit status: %s\n\n%s' "$status" "$err")"
  /usr/bin/osascript \
    -e 'on run argv' \
    -e 'display dialog (item 1 of argv) buttons {"OK"} default button "OK" with title "CotEditor Filter"' \
    -e 'end run' \
    "$message" >/dev/null 2>&1 || true
  cat "$tmp_in"
fi
