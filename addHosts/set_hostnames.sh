#!/bin/bash

source config

for filename in `ls $_host_ip_`
do
  ip=`cat $_host_ip_/$filename`
  grep $filename /etc/hosts > /dev/null
  if [ $? -eq 0 ]
  then
     sed -ri "s/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\t$filename/$ip\t$filename/g" /etc/hosts
  else
     echo -e "$ip\t$filename" >> /etc/hosts
  fi 
done


