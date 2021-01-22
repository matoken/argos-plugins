#!/bin/bash

STR=`wego -d 2 -f emoji`
echo "`echo "${STR}" | head -4 | tail -1`"
echo "---"
echo "${STR}" | awk 1 ORS="\\\\n"
echo " | font=monospace"

