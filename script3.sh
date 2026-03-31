#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "======================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner/group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract size using du
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Ownership: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Check if Python's config/library directory exists
CONFIG_DIR="/etc/python3"
echo "----------------------"
if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Software Config Dir ($CONFIG_DIR) exists."
    echo "Permissions/Ownership: $CONFIG_PERMS"
else
    echo "Software Config Dir ($CONFIG_DIR) does not exist."
fi
