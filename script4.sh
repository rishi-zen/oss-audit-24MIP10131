#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog "error"

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style retry if the file is empty or does not exist
while [ ! -s "$LOGFILE" ]; do
    echo "Error: File '$LOGFILE' is empty or not found."
    # For automation, we simulate an exit if interactive fails, 
    # but here we'll just handle it by checking if it's the first run
    exit 1
done

# Read file line by line and count keywords
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "============================================="
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "============================================="
echo "Here are the last 5 matching lines:"
# Print the last 5 matching lines using tail + grep
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
