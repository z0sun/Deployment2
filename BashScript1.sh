!/bin/bash

#This is an Update Script
 
#By Joseph White 08/28/23

#Update Server

sudo apt update && sudo apt upgrade
 
#Create file containing the list of upgradable packages

sudo apt update > "$(date +"%m.%d.%y").txt"

#Notify task is complete

echo "Task Completed!"

#To set my cronjob

crontab -e 
0 23 * * 5 /home/ubuntu/Fridayjob.sh
