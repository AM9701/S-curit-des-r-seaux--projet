# Installation de Docker Engine (docker et docker-compose)
sudo apt update
sudo apt install -y focker.io
sudo systemctl enable docker --now

docker --version
docker-compose --version

# Desactiver antivirus
# Executer les commandes

## Terminal 1
-------------
docker-compose build --no-cache
docker-compose up -d

## Terminal 2: Zion
-------------
docker exec -it zion /bin/bash

## Terminal 3: Neo
-------------
docker exec -it neo /bin/bash

## Terminal 4: Smith
-------------
docker exec -it smith /bin/bash
ssh root@10.0.0.4



# Trouble shooting
docker-compose down

docker network ls
docker network rm network_ID

docker image ls
docker rmi image_ID

docker container ls
docker rmi container_ID

docker ps -all
docker stop container_ID
docker container prune