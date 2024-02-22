#!/bin/bash

cd /home/ubuntu/

# Updates and basic tools for server administration
apt-get update -y

apt-get install neofetch net-tools -y

#  Adding docker repos to Ubuntu and installing Docker Engine
# Add Docker's official GPG key:
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update \

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y \

cp /home/ubuntu/ubuntu-prep/s_gen.py /home/ubuntu/ubuntu-prep/docker-compose.yml /home/ubuntu/

cp -R /home/ubuntu/ubuntu-prep/nginx/ /home/ubuntu/



git clone https://github.com/paulo-desouza/newspace360_django
cd newspace360_django
python3 ../s_gen.py
echo -e "\nALLOWED_HOSTS='newspace360.net www.newspace360.net'" >> .env
cd ..


git clone https://github.com/paulo-desouza/reception-app-django
cd reception-app-django
python3 ../s_gen.py
echo -e "\nALLOWED_HOSTS='reception.desouza-tech.com www.reception.desouza-tech.com'" >> .env
cd ..


git clone https://github.com/paulo-desouza/next_portfolio


docker compose up








# To-do: 
#   - install and config snort


