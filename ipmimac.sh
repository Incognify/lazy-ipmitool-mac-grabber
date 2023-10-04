#!/bin/bash
# Replace IPMI_ADMIN and IPMI_PASSWORD below

> ipmimac.txt
while IFS= read -r ipmi; do
  ipmi_mac=$(ipmitool -U IPMI_ADMIN -P IPMI_PASSWORD -H "$ipmi" raw 0x30 0x21 | tail -c 18)
  ipmi_mac=$(echo "$ipmi_mac" | sed 's/ /:/g')
  echo "$ipmi = $ipmi_mac" >> ipmimac.txt
  echo "$ipmi = $ipmi_mac"
done < ipmi.txt
