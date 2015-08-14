#!/bin/bash

username=library

sudo apt-get install openssh-server

sudo sed -i "s/PermitRootLogin without-password/PermitRootLogin no/g" /etc/ssh/sshd_config
echo -e "AllowUsers $username" | sudo tee -a /etc/ssh/sshd_config

sudo service ssh reload

##ssh after saving the ip in the hosts
