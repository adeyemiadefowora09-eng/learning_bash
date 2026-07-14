#!/bin/bash

LOG_DIR="/Users/logs"
APP_LOG_FILES="application.log"
SYS_LOG_FILES="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")
echo "analysing log files"

echo -e "\nlist of log files updated in last 24 hours"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILES in $LOG_FILES;do
    echo -e "\n"
    echo "=================="
    echo "================="
  for pattern in ${ERROR_PATTERNS[@]};do
      echo -e "\nsearching $pattern logs in found $LOG_FILE"
      grep "$pattern" "$LOG_FILES"

      echo "Numbers of $pattern logs found in $LOG_FILE"
      grep -c "$pattern" "$LOG_FILES"
    done
done