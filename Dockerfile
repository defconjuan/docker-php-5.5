FROM dockerizedrupal/base-debian-jessie:1.1.0

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

LABEL vendor=dockerizedrupal.com

ENV TERM xterm

ADD ./src /src

RUN /src/entrypoint.sh build

EXPOSE 9000 50022

RUN mkdir -p /var/run/sshd
#RUN /usr/sbin/sshd -D
RUN /etc/init.d/ssh start
#RUN update-rc.d ssh defaults
#RUN service ssh start

ENTRYPOINT ["/src/entrypoint.sh", "run"]
