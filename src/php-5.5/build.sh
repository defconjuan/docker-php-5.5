#!/usr/bin/env bash

apt-get update
apt-get install -y openssh-server

sed -i 's/Port 22/\# Defcon edits\: \
\Port 22 \# original\
 Port 50022/g' /etc/ssh/sshd_config
 
/etc/init.d/ssh start
update-rc.d ssh defaults
service ssh start

puppet apply --modulepath=/src/php-5.5/build/modules /src/php-5.5/build/build.pp

echo -e "container\ncontainer" | passwd container
