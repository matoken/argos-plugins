#!/bin/bash

THERMAL=`acpi -t | awk '{print $4}'`
COLOR="white"

if [ `echo "${THERMAL} >= 80" | bc` == 1 ] ; then
	COLOR="red"
fi

#echo "<span color='${COLOR}' weight='normal'><tt>🌡${THERMAL}℃ </tt></span>"
echo "🌡${THERMAL}℃  | color=${COLOR}"
echo "---"
if [ "${ARGOS_MENU_OPEN}" == "true" ]; then
	TOP_OUTPUT=$(top -b -n 1 | head -n 20 | awk 1 ORS="\\\\n")
	echo "${TOP_OUTPUT} | font=monospace bash=top"
else
	echo "Loading..."
fi

