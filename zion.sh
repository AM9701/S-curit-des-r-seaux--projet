#!/bin/sh

#Ouvrir les ports 22/TCP et 80/tcp et Apache
ufw allow 22/tcp
ufw allow 80/tcp
#ufw allow 'Apache'

# Redemarrage du service rsyslog
service rsyslog start

# Redemmarage de Fail2ban
service fail2ban restart

# Redemmarage de Apache2
service apache2 restart

#Attente infinie pour garder le script en vie
tail -f /dev/null