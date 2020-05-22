#!/bin/bash 
# Firewall Rules script for FreeIPA server.
# This script opens the following TCP and UDP ports on a Fedora Server system.
# You will have to modify permissions with chmod (as shown below) and run as root.
# chmod +x rules.sh
# If you are not installing the DNS portion of FreeIPA then port 53 can be removed from TCP and UDP. 

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
