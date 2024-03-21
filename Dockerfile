FROM ubuntu:latest
#Installation des packages necessaires

RUN apt-get update && apt-get -y install apt-utils iproute2 net-tools iputils.ping
RUN apt-get update && apt-get -y install openssh-client
RUN apt-get update && apt-get -y install curl tcpdump

RUN apt-get clean

# Copie des fichiers vers le conteneurs

COPY --chown=root:root ./smith.sh /smith.sh


#Attribution des permissions
RUN chmod +x /smith.sh


#Maintenir le conteneur en vie
CMD tail -f /dev/null

# POint d'entree pour executer le script Neo.sh
ENTRYPOINT ["/bin/sh","/smith.sh"]