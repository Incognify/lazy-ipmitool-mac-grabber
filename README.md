# lazy-ipmitool-mac-grabber
Laziness breeds "innovation". Inspired by https://gist.github.com/DavidWittman/b7a509632ed92fccf237 (  Pull the LAN1/eth0 MAC address from SuperMicro IPMI  )

We use [TenantOS](https://tenantos.com/) and have Supermicro Blade servers. This comes in handy when we need to add blades to the TenantOS software as it requires the IPMI IP and PXE MAC of each new server we're importing. This just prints the IPMI IP and MAC on a line and makes it easier to quickly copy/paste these values into TenantOS.

Beats running the IPMI tool one by one and adjusting the IPMI IP value each time. This script will take a list of IPMI IPs from ipmi.txt and save the output with their corresponding MAC address to impimac.txt

# To use:
- Add each IPMI IP as it's own line in a filecalled impi.txt
- Adjust the IPMI admin user/pass in the ipmimac.sh file
- Run ./ipmimac.sh

This should print the corresponding MAC for the device and also save it in ipmimac.txt for future reference, if needed.

Example Output:

```
user@tenantos:~$ ./ipmimac.sh
10.4.20.50 = 00:1A:2B:3C:4D:5E
10.4.20.51 = A1:B2:C3:D4:E5:F6
10.4.20.52 = 12:34:56:78:9A:BC
10.4.20.53 = FE:DC:BA:98:76:54
10.4.20.54 = 6A:7B:8C:9D:AE:BF
10.4.20.55 = F1:E2:D3:C4:B5:A6
10.4.20.56 = 91:82:73:64:55:46
10.4.20.57 = AB:CD:EF:01:23:45

```
