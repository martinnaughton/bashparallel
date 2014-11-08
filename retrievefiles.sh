#!/bin/bash

echo Retrieving file $1
#will retrieve the file from remote server and delete the file from remote server
echo $1 | parallel --sshloginfile ipaddresses --return {} --cleanup
