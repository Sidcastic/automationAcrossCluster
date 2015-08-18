#!/bin/bash


#the common paths to the lookup folder ( for regestering ip to the sync unit)
source config

# fetch ip of the syatem by making a request atempt to the dns server
new_ip=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`

#fetch the host name of the local machine
hostname=`cat /etc/hostname`


#if the file doesnot exist create file entry for the new machine
if [ ! -f $_host_ip_/$hostname ]
then
  if [ ! -d $_host_file_/$hostname ]
  then
    mkdir $_host_file_/$hostname
  fi
fi

#srt1 != str2 if true
#comparing the previous ip with the new ip if changed update the existing file
if [ $new_ip != $_host_ip_/$hostname ]
then
  echo $new_ip >$_host_ip_/$hostname
fi
