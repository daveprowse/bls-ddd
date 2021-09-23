#!/bin/bash
# Written September 23, 2021
# !! run as root !!
# change permissions for this script: `chmod 755 z-debian11-fix.sh`

# This is a script that fixes the Debian 11 issue with ISC Kea dependencies.
# It downloads and installs several dependencies that are required for ISC Kea on Debian 11:
# - libboost-system1.62.0
# - liblig4cplus-1.1-9
# - libmariaclient18 (which also requires mysql-common)
# - libmysqlclient21
# It then downloads and installs the ISC Kea Common and DHCP4 packages version 1.9.11 directly from Cloudsmith.
# Note: This script is not necessary for Debian 10, and will most likely become obsolete soon when the ISC creates a working package for apt on Debian 11.
# Note: The script downloads Debian dependencies from US locations. Feel free to change the location as you see fit for faster downloads. It shouldn't be necessary because the downloads are fairly small.

clear -x
mkdir debian11-fix
cd debian11-fix
wget http://ftp.us.debian.org/debian/pool/main/b/boost1.62/libboost-system1.62.0_1.62.0+dfsg-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/l/log4cplus/liblog4cplus-1.1-9_1.1.2-3.2_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/m/mariadb-10.1/libmariadbclient18_10.1.48-0+deb9u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/m/mysql-8.0/libmysqlclient21_8.0.23-3+b1_amd64.deb
dpkg -i libboost-system1.62.0_1.62.0+dfsg-4_amd64.deb
dpkg -i liblog4cplus-1.1-9_1.1.2-3.2_amd64.deb
apt install mysql-common
dpkg -i libmariadbclient18_10.1.48-0+deb9u2_amd64.deb
dpkg -i libmysqlclient21_8.0.23-3+b1_amd64.deb 
apt install libpq5 curl -y
curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-1-9/cfg/setup/bash.deb.sh' | bash
wget https://dl.cloudsmith.io/public/isc/kea-1-9/deb/debian/pool/stretch/main/i/is/isc-kea-common_1.9.11-isc20210830141610/isc-kea-common_1.9.11-isc20210830141610_amd64.deb
wget https://dl.cloudsmith.io/public/isc/kea-1-9/deb/debian/pool/stretch/main/i/is/isc-kea-dhcp4-server_1.9.11-isc20210830141610/isc-kea-dhcp4-server_1.9.11-isc20210830141610_amd64.deb
dpkg -i isc-kea-common_1.9.11-isc20210830141610_amd64.deb
dpkg -i isc-kea-dhcp4-server_1.9.11-isc20210830141610_amd64.deb

echo && echo
printf "\n\033[7;32mPROCESS COMPLETE \033[0m"
echo && echo

