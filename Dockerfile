FROM ubuntu:latest


#Installation des packages necessaires

RUN apt-get update && apt-get -y install apt-utils iproute2 net-tools iputils.ping
RUN apt-get update && apt-get -y install openssh-client
RUN apt-get update && apt-get -y install curl tcpdump
RUN apt-get update && apt-get -y install apache2
RUN apt-get update && apt-get -y install fail2ban
RUN apt-get clean


# Copie des fichiers vers le conteneurs


COPY --chown=root:root ./zion.sh /zion.sh
COPY --chown=root:root ./rsyslog.conf /etc/rsyslog.conf
COPY --chown=root:root ./apache2.conf /etc/apache2/apache2.conf
COPY --chown=root:root ./jail.local /etc/fail2ban/jail.local


#Attribution des permissions
RUN chmod +x /zion.sh

# POint d'entree pour executer le script Neo.sh
ENTRYPOINT ["/bin/sh","/zion.sh"]