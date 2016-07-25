#!/usr/bin/env bash

apt-get update
apt-get install -y openssh-server
/etc/init.d/ssh start

puppet apply --modulepath=/src/php-5.5/build/modules /src/php-5.5/build/build.pp

echo -e "container\ncontainer" | passwd container
