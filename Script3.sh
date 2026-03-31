#!/bin/bash  
# Script 3: Disk and Permission Auditor  

TARGETS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")  

echo "===== Directory Analysis Report ====="  
echo ""  

for PATH in "${TARGETS[@]}"  
do  
	if [ -d "$PATH" ]; then  
		SIZE=$(du -sh "$PATH" 2>/dev/null | awk '{print $1}')  
		DETAILS=$(ls -ld "$PATH" | awk '{print $1, $3, $4}')  

		echo "Directory : $PATH"  
		echo "Size      : $SIZE"  
		echo "Perm/User : $DETAILS"  
		echo "-----------------------------------"  
	else  
		echo "$PATH not found!"  
	fi  
done  

PYTHON="/usr/bin/python3"  

if [ -f "$PYTHON" ]; then  
	echo ""  
	echo "Python binary found at $PYTHON"  
	ls -l "$PYTHON"  
fi