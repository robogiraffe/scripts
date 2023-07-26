Small script to parse MySQL slow.log
====================================

rem.sh - remove all rows with 'SET timestamp=....;' (only the semicolon interferes) in all .log files.
parslow.py - parse all slow.log files with condition (query_time > 10.0) and save in separate .txt file.
combiner.sh - combine all .txt files in one.


