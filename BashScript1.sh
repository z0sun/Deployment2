!/bin/bash

#This is an Update Script
 
#By Joseph White 08/28/23

#Update Server

sudo apt update && sudo apt upgrade
 
#Create file containing the list of upgradable packages

sudo apt update > 08.30.23.txt

#Notify task is complete

echo "Task Completed!"

#To set my cronjob

crontab -e 
0 23 * * 5 /home/ubuntu/Fridayjob.sh

#I was a little confused about setting permissions but I guessed since I was not getting permissions errors I must have the correct privileges.
