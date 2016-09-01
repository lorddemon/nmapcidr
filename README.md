# nmapcidr
Used Nmap For CIDR Network notation

For use:

*first:*
fill the file lista.txt with CIDR networs one per line.

e.g lista.txt
127.0.0.1/30
10.0.0.1/31

*second:*
execute the script.
> sh nmap_cidr.sh

The script make a directory for CIDR network and save the xml format nmap output in one file per host of the CIDR network in this directory.
