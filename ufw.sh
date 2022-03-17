#!/bin/bash

ufw status
#ufw loggin on
ufw enable

ufw deny ssh/tcp

# Common
ufw allow 665/tcp
ufw allow 53/tcp
ufw allow 80/tcp
#ufw allow 443/tcp

# Samba
ufw allow 137/tcp
ufw allow 138/tcp
ufw allow 139/tcp
ufw allow 445/tcp

# Extras
#ufw allow 8080/tcp
#ufw allow 9090/tcp
#ufw allow 9100/tcp
#ufw allow 3000/tcp
#ufw allow 5000/tcp

# from IPs
sudo ufw deny  from 192.168.1.10 to any proto tcp port 665
sudo ufw allow from 192.168.1.10 to any proto udp port 123
sudo ufw allow from 192.168.1.10 to any proto tcp port 22

# Range
sudo ufw allow from 192.168.1.10/24 to any proto tcp port 665

ufw status
ufw status|grep -wv v6|grep -i allow
