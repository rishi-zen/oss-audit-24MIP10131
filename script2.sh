#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE=$1 # e.g. httpd, mysql, vlc, firefox, python3

if [ -z "$PACKAGE" ]; then
    echo "Please provide a package name. Example: ./script2.sh python3"
    exit 1
fi

# Check if package is installed (using dpkg for Debian/Ubuntu systems)
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    # Extracting version and summary info
    dpkg -s "$PACKAGE" | grep -E '^Version|^Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement that prints a one-line philosophy note
case $PACKAGE in
    apache2|httpd) echo "Apache: the web server that built the open internet" ;;
    mysql-server|mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    python3|python) echo "Python: A language shaped entirely by community" ;;
    git) echo "Git: The tool Linus built when proprietary failed him" ;;
    firefox) echo "Firefox: A nonprofit fighting for an open web" ;;
    *) echo "FOSS is the foundation of modern computing." ;;
esac
