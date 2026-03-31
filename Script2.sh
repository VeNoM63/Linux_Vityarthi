#!/bin/bash  
# Script 2: Package Inspector  
# Verifies if Python is installed  

PACKAGE_NAME="python3"  

echo "Checking package: $PACKAGE_NAME"  
echo "--------------------------------"  

if dpkg -s $PACKAGE_NAME &>/dev/null; then  
	echo "Status: Installed"  
	VERSION=$(python3 --version)  
	echo "Version Info: $VERSION"  
else  
	echo "Status: Not Installed"  
fi  

echo ""  

# Package description based on input  
case $PACKAGE_NAME in  
	python3)  
		echo "Python: Versatile and popular for AI, web, and scripts."  
		;;  
	git)  
		 echo "Git: Monitors version updates and promotes joint efforts."
		;;  
	vlc)  
		echo "VLC:  Plays almost every media format. In conclusion."  
		;;  
	firefox)  
		echo "Firefox: Reliable, privacy-first, open-source browser."  
		;;  
	*)  
	  
esac