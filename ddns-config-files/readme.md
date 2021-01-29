These configuration files are designed to help you run a Dynamic DNS environment.
They are meant to be used on two Debian/Ubuntu systems. 
The first is the ISC Kea DHCP & DDNS server: 10.0.2.4
The second is the ISC BIND DNS server: 10.0.2.5
I recommend building some clones of your DHCP and DNS servers for testing purposes.
There are a lot of moving parts to this, so be ready to persevere.
For the Debian/Ubuntu BIND DNS server, AppArmor's BIND profile will have to be re-configured (best option), or the BIND profile will have to be removed, or AppArmor will need to be disabled (not recommended). 
Note that these config files do not reflect any type of encryption. DNSSEC (TSIG) is recommended when doing any type of updates or transfers to and from BIND DNS servers. 
Enjoy!
