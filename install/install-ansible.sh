#!/bin/bash

### Proxy configuration, if required
# export http_proxy=http://proxy.example.com/
# export https_proxy=http://proxy.example.com:443/
# export HTTP_PROXY=http://proxy.example.com/
# export HTTPS_PROXY=http://proxy.example.com:443/
#
# bash -c "cat << EOF > /etc/apt/apt.conf
# Acquire::http::Proxy \"$HTTP_PROXY\";
# Acquire::https::Proxy \"$HTTPS_PROXY\";
# EOF"

apt-get update
apt-get -y dist-upgrade
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible python-pip 
pip install pywinrm