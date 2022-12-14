#!/bin/bash



echo "simoc" | sudo -S pip3 install git-dumper
echo "simoc" | sudo -S apt update
echo "simoc" | sudo -S apt install -y seclists
echo "simoc" | sudo -S egrep -v '^#' /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-small.txt > /home/simoc/directory-list-2.3-small.txt
service ssh start

ssh-keygen -t rsa -q -f "/home/simoc/.ssh/id_rsa" -N ""

cp /home/simoc/.ssh/id_rsa /home/simoc/.ssh/authorized_keys


