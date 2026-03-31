#!/bin/bash
# Script 5: Open Source Manifesto Generator

# Use /dev/tty or similar for interactive, but for this exercise 
# we'll use standard read which takes from stdin.

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

CURRENT_DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose a paragraph using the variables
MANIFESTO_TEXT="On this day, $CURRENT_DATE, I reflect on the tools that shape my world. Every day, I rely on $TOOL to write code and solve problems. To me, the core of the open-source philosophy is $FREEDOM. It ensures that knowledge is not locked away. If I could contribute to this ecosystem, I would build a $BUILD and share it freely with the community, paying forward the incredible foundations I stand upon."

# Write it to OUTPUT using echo and >> (actually we use > to start fresh or >> as requested)
echo "$MANIFESTO_TEXT" > "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------------------"
# Display the file contents
cat "$OUTPUT"
