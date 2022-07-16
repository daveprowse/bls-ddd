# bls-ddd
Config files for Building Linux Servers (DHCP, DNS, DS) Webinars and Course.
Note: These configuration files are designed for learning and testing purposes, and not for use in a production environment.

!!! Important: If you are using Debian 11 (Bullseye), you will want to use the ISC Kea 2.0 repo. (as of June, 2022)!!!  See the script here for an automatic installation on Debian Bullseye: https://github.com/daveprowse/bls-ddd/blob/main/scripts-bash/kea-install-script.sh

Make sure you are logged in as root to a Debian system.

Access the  ~ directory:

cd ~

Download this repository there. 

git clone https://github.com/daveprowse/bls-ddd.git

That will create the bls-ddd directory. 

Access it with: 

cd bls-ddd

Copy the individual files to their respective locations as we proceed. 

Enjoy!

Notes: 
1. For this test environment I am using Debian 10 (Buster) as a server for DHCP and DNS (with no GUI).
2. The configuration files are based on one of my test labs that runs on the 172.21.0.0/16 network. Your IP addresses and computer names will vary.
