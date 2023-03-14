#!/bin/bash
while read ip rest
do
ping -c 1 -W 3 "$ip" > /dev/null 2>&1 && 
echo "Instance $ip $rest : up" || 
echo "Instance $ip $rest: down" 
done < host.txt
