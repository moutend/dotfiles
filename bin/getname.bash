#!/bin/bash

computer_name=$(scutil --get ComputerName)
local_host_name=$(scutil --get LocalHostName)
host_name=$(hostname)

echo "ComputerName	${computer_name}"
echo "LocalHostName	${local_host_name}"
echo "hostname	${host_name}"
