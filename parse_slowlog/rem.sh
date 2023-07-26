#!/bin/bash
#The script to remove all rows with 'SET timestamp' in multiple .log files in logs folder
if [ -d "logs" ]; then
  cd logs
fi
log_files=$(find . -type f -name "*.log")
for file in $log_files; do
  tmp_file="${file}.tmp"
  grep -v "^SET timestamp" "$file" > "$tmp_file"
  mv "$tmp_file" "$file"
done
echo "Rows with 'SET timestamp' in .log deleted."

