#!/bin/bash 
# Firewall Rules script for FreeIPA server.
# This script opens the following TCP and UDP ports on a Fedora Server system.
# Create a directory named scripts in /~  and save the script there.
# You will have to modify permissions with chmod (as shown below) and run as root.
# chmod +x rules.sh
# If you are not installing the DNS portion of FreeIPA then port 53 can be removed from the 't' and 'u' lists. 

# start script
  for t in 80 443 389 636 88 464 53 
  do 
  firewall-cmd  --permanent --add-port=$[t]/tcp 
  done 

  for u in 88 464 53 123 
  do 
  firewall-cmd  --permanent --add-port=$[u]/udp 
  done 
# end script
