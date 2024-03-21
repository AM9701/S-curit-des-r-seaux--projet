FROM ubuntu:latest

#Installation des packages necessaires

RUN apt-get update && apt-get -y install apt-utils iproute2 net-tools iputils.ping rsyslog ufw && apt-get clean


# Copie des fichiers vers le conteneurs

COPY --chown=root:root ./neo.sh /neo.sh
COPY --chown=root:root ./rsyslog.conf /etc/rsyslog.conf

#Attribution des permissions
RUN chmod +x /neo.sh

# POint d'entree pour executer le script Neo.sh
ENTRYPOINT ["/bin/sh","/neo.sh"]