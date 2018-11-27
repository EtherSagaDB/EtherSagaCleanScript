#!/bin/bash 

##### THE VIRUS THREATS COME COME THE HELP PAGES IN /usr/java THIS WILL DELETE THEM ALL ####
G="  [40;32m"
W="  [40;37m"
F1=HTM
F2=HMTL
echo "Remove file types:"$G$F1$W"%"$G$F2$W"y/n?"
read manage
if [ "$manage" = 'y' ]; then
cd /root/; touch FixLog.txt
cd /usr/java
echo "---==== FILE LOG ====---" | tee -a /root/FixLog.txt
echo $(date '+%D %r') | tee -a /root/FixLog.txt
echo "---==================---" | tee -a /root/FixLog.txt
echo $G"LOGGING FILES AND FOLDER NAMES"$W
find /usr/java -iname "*.htm" | tee -a /root/FixLog.txt &
find . -type f -iname \*.htm -delete &
sleep 2
find /usr/java -iname "*.html" | tee -a /root/FixLog.txt &
find . -type f -iname \*.html -delete
echo "---==== ENG LOG ====---" | tee -a /root/FixLog.txt 
echo $G"FILES LOGGED AND DELETED"$W
echo "Check /root/FixLog.txt For more info!"
else
echo "You didn't press y"
fi