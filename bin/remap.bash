#!/bin/bash

# Change Right Option Key to Left Ctrl Key
hidutil property --set '{"UserKeyMapping":[
  {
    "HIDKeyboardModifierMappingSrc": 0x7000000E6,
    "HIDKeyboardModifierMappingDst": 0x7000000E0
  },
]}'
