#!/bin/bash
# this script is designed to install the ISC Kea DHCP4 server to a Debian Linux system.
# run this as root (for testing purposes). 
# Otherwise, your account will need to be a sudoer and you will need to add `sudo` before `bash` on line 12, and at the beggining of lines 10, 11, and 13. 
# make sure you chmod +x this script before running.
# this script installs kea-1-8, for newer versions, modify line 12
 
start=$SECONDS
printf "\n\033[7;31mExecuting the script.........\033[0m\n\n"
apt update && apt upgrade -y
apt install curl vim -y
curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-1-8/cfg/setup/bash.deb.sh'| bash
apt install -y isc-kea-common isc-kea-dhcp4-server
printf "\n\033[7;32mCOMPLETE! \033[0m"
printf "\nTime to complete = %s seconds.\n\n" "$SECONDS"
