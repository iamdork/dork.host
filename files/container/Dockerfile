FROM centos:centos7

RUN yum install epel-release -y
RUN yum install sudo -y
RUN yum install openssh-server supervisor -y

ADD id_rsa.pub /tmp/id_rsa.pub
ADD generate_hostkey.sh /opt/generate_hostkey.sh
RUN chmod +x /opt/generate_hostkey.sh
ADD sshd.ini /etc/supervisord.d/sshd.ini
ADD sudoers /etc/sudoers

RUN useradd -d /home/dork dork
RUN mkdir -p /home/dork/.ssh
RUN cat /tmp/id_rsa.pub >> /home/dork/.ssh/authorized_keys
RUN chown -R dork /home/dork

CMD ["/usr/bin/supervisord"]