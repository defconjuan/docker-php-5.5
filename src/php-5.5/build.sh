#!/usr/bin/env bash

# apt-get update
apt-get install -y openssh-server

sed -i 's/Port 22/\# Defcon edits\: \
\Port 22 \# original\
 Port 50022/g' /etc/ssh/sshd_config
 
puppet apply --modulepath=/src/php-5.5/build/modules /src/php-5.5/build/build.pp

update-rc.d ssh defaults

echo -e "container\ncontainer" | passwd container
