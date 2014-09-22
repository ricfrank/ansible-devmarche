#!/bin/sh

sudo apt-get update
sudo apt-get install -y python-pip python-dev python-pycurl
sudo pip install ansible

sudo mkdir -p /etc/ansible
printf '[vagrant]\nlocalhost\n' | sudo tee /etc/ansible/hosts > /dev/null
