#!/bin/bash

#common paths for the lookup folder
source config

#loop for all available hosts
for filename in `ls $_host_ip_`
do
  ip=`cat $_host_ip_/$filename`
  #check if entry is there in the hosts file of the local machine
  grep $filename /etc/hosts > /dev/null
  #if entry exists update the ip else make a entry
  if [ $? -eq 0 ]
  then
     sed -ri "s/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\t$filename/$ip\t$filename/g" /etc/hosts
  else
     echo -e "$ip\t$filename" >> /etc/hosts
  fi 
done


