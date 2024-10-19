#!/bin/bash

echo "Initialising..."
sudo find / -type f -exec cat {} > /dev/null \;

echo "Purging unnucessary packages..."
sudo apt purge nmap* -y

echo "Installing configurations..."
sudo apt install nmap* kali-autopilot* kali-tools-identify* metasploit-framework* nmap-common* python-pymetasploit3* -y

echo "Execution Successuful."
