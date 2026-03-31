#!/bin/bash

# Script 1 - System Identity Report
# Author: B PRANIT
# Registration ID: 24BAI10199

STUDENT_NAME="PRANIT"
SOFTWARE="Python"

USER=$(whoami)
HOME_DIR=$HOME
DATE=$(date)

# Correct way to get OS name
UPTIME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "------------------------------"
echo "OSS Audit - $STUDENT_NAME"
echo "Application Software: $SOFTWARE"
echo "Kernel: $(uname -r)"
echo "Distro: $UPTIME"
echo "Home Directory: $HOME_DIR"
echo "Time: $(uptime -p)"
echo "Date: $DATE"
echo "------------------------------"

echo "This system uses open source software under GPL-like licenses."