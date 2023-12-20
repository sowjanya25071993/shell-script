#!/bin/bash
to_team=$1
alert_type=$2
body=$3
escape_body=$(printf '%s\n' "$body" | sed -e 's/[]\/ $*.^[]/\\&\g');
to_address=$4
subject=$5
FINAL_BODY=$(sed -e "s/to_team/$to_team/g" -e "s/alert-type/$alert_type/g" -e "s/body/$escape_body/g" template.html)
echo "$FINAL_BODY" | mail -s "$(echo -e "$subject \n content_type: text/html")" "$to_address"