#!/bin/bash
TO_TEAM=$1
ALERT_TYPE=$2
BODY=$3
escape_body=$(printf '%s\n' "$body" | sed -e 's/[]\/$*.^[]/\\&/g');
to_address=$4
subject=$5
FINAL_BODY=$(sed -e "s/TO_TEAM/$TO_TEAM/g" -e "s/ALERT_TYPE/$aALERT_TYPE/g" -e "s/BODY/$escape_body/g" template.html)
echo "$FINAL_BODY" | mail -s "$(echo -e "$subject \n content_type: text/html")" "$to_address"