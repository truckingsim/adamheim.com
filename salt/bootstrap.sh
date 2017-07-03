#!/bin/sh
wget -O - https://repo.saltstack.com/apt/ubuntu/ubuntu14/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/ubuntu14/latest trusty main" > /etc/apt/sources.list.d/saltstack.list
DEBIAN_FRONTEND=noninteractive apt-get update -q
DEBIAN_FRONTEND=noninteractive apt-get install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" python-pip python-git python-software-properties salt-minion
# for all the hate I give pip, the fact that I can do !=8.1.2 is pretty awesome
pip install "GitPython>=0.3.2.1" "docker-py>=1.4" "pip>=8.0.0,!=8.1.2"

curl -o /tmp/.bootstrap_salt.sh -L https://bootstrap.saltstack.com
chmod a+x /tmp/.bootstrap_salt.sh

/tmp/.bootstrap_salt.sh -P