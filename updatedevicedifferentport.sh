#!/bin/bash

# you can specify here another port to use or use certifates to log in to a server. parallel will then use you custom ssh command instead of the default configuration.
echo Transfering $1
echo $1 | parallel --sshlogin 'ssh -p 6000 pi@192.168.1.183'  --transfer ls -ltrh 
