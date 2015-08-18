#!/bin/bash

source config

#the file entry automation.conf to the folder
cat >$exec_path/automation.conf <<ennd
# defines when to run the task
start on startup
task
#execute the file $startup at start
exec $startup_file
ennd
