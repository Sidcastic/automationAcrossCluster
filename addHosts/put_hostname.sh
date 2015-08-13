#!/bin/bash

source config


new_ip=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`
hostname=`cat /etc/hostname`

#if the file doesnot exist create file
if [ ! -f $_host_ip_/$hostname ]
then
  if [ ! -d $_host_file_/$hostname ]
  then
    mkdir $_host_file_/$hostname
  fi
fi

#srt1 != str2 if true
if [ $new_ip != $_host_ip_/$hostname ]
then
  echo $new_ip >$_host_ip_/$hostname
fi
