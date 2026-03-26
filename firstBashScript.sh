#!/bin/bash

### This script prints System info ###
echo 
echo "Welcome to the Bash Script:)"
echo

# checking system uptime
echo "########################################"
echo "the system uptime is :"
uptime

# Memory Utilisation
echo "########################################"
echo "Memory Utilisation:"
free -m

# Disk Utilisation
echo "########################################"
echo "Disk Utilisation:"
df -h

echo "########################################"
echo

echo "End of the Script"
echo
