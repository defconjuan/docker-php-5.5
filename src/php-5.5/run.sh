#!/usr/bin/env bash

puppet apply --modulepath=/src/php-5.5/run/modules /src/php-5.5/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf

/usr/sbin/sshd -D
#/etc/init.d/ssh start
#update-rc.d ssh defaults
#service ssh start
