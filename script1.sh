#!/bin/bash
# Script 1: System Identity Report
# Author: Rishi Kumar Singh
# Course: Open Source Software
# --- Variables
STUDENT_NAME="Rishi Kumar Singh"
SOFTWARE_CHOICE="Python"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Added distro name, date, and license message
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME=" | cut -d '"' -f 2)
CURRENT_DATE=$(date)
OS_LICENSE="This OS is primarily covered by the GNU GPL and various open-source licenses."

# --- Display
echo "========================================"
echo "          Open Source Audit             "
echo "========================================"
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "OS Name : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $HOME"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "License : $OS_LICENSE"
