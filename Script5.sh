#!/bin/bash  
# Script 5  - Manifesto Generator

echo "Answer the questions below:"  
echo ""  

read -p "Your favorite tool: " TOOL  
read -p "Define freedom: " FREEDOM  
read -p "Your future creation: " BUILD  

DATE=$(date)  
FILE="manifesto.txt"  

echo "On $DATE, I believe freedom in open source is $FREEDOM." > $FILE  
echo "Community thrives through tools like $TOOL." >> $FILE  
echo "I plan to create $BUILD and distribute it without limits." >> $FILE  

echo ""  
echo "Details saved in $FILE."  
cat $FILE