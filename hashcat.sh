#!/bin/bash
key=$1
shift

success_str="Hash result:"
hashcat $@
check_results=`hashcat $@ --show`
hash_result=`echo $check_results |awk -F: '{print $2}'`
title="$success_str $hash_result"
if [ -z "$hash_result" ]; then
    title="Crack failed: no result."
    check_results="Crack failed: no result."
fi

echo "$title\n$check_results"

curl "http://sc.ftqq.com/$key.send" -d "text=$title&desp=$check_results"


