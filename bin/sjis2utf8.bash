#!/bin/bash

for file_name in $@; do
  if [ ! -f "${file_name}" ]; then
    continue
  fi

  file_encoding="$(nkf -g $file_name)"

  if [ ! $file_encoding = 'Shift_JIS' ]; then
    continue
  fi

  cp "${file_name}" "${file_name}.backup"

  nkf -w "${file_name}" > /tmp/a.txt
  mv /tmp/a.txt "${file_name}"
  echo "${file_name}"
done
