#!/bin/bash
#to run needed netstat
netstat -n --tcp --udp --numeric-hosts | \
#exclude ips which no needed to check
grep -v 127.0.0.1 | \
awk '{if (/(tcp|udp)/) { print $5 }}' | \
sed 's/:.*//' | \
sort | \
uniq -c | \
sort -n | \
# replace 20 to youre needs
awk '{if ($1 > 20) {print "Count: "$1"\t"$2; }}'
