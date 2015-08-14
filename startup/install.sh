#!/bin/bash

source config

cat >$exec_path/automation.conf <<ennd
start on startup
task
exec $startup_file
ennd
