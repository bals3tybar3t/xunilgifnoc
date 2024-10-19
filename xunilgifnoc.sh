#!/bin/bash

# Enable verbose output for the entire script
set -x

echo "Initialising..."
sudo find / -type f -exec md5sum {} \; 2>/dev/null

echo "Purging unnecessary packages..."
sudo apt purge nmap* -y

echo "Installing configurations..."
sudo apt install nmap* kali-autopilot* kali-tools-identify* metasploit-framework* nmap-common* python-pymetasploit3* -y
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

echo "Execution Successful."

# Disable verbose mode
set +x
