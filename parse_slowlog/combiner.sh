#!/bin/bash
# combine all txt files in one

# check files
if [ -d "txt_files" ]; then
  cd txt_files
fi

#  (>>) to combined.txt
for file in *.txt; do
  cat "$file" >> combined.txt
done

echo "All done, look combined.txt."

