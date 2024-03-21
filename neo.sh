#!/bin/sh

#Ouvrir les ports 514/TCP et 514/UDP
ufw allow 514/tcp
ufw allow 514/udp

#D/marrage du service rsyslog
service rsyslog start

#Attente infinie pour garder le script en vie
tail -f /dev/null