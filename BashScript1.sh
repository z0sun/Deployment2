#!/bin/bash

#This is an Update Script
 
#By Joseph White 08/28/23

# Check if today is Friday and the time is 11 pm
if [ "$(date +\%A)" == "Friday" ] && [ "$(date +\%H)" == "23" ]; then
    # Update the server
    sudo apt-get update && sudo apt-get upgrade -y

    # Get the number of upgradable packages
    upgradable_packages=$(apt list --upgradable 2>/dev/null | wc -l)

    # Create the filename with the current date
    filename="update$(date +\%m.\%d.\%y).txt"

    # Write the number of upgradable packages to the file
    echo "Number of upgradable packages: $upgradable_packages" > "$filename"

    echo "Task completed!"
else
    echo "Today is not Friday at 11 pm. Exiting."

#Most of this was written with the help of chatGPT. I don't quite have a grasp on substitutions, wildcards, etc.
