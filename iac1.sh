#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando  grupos de usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd  gilson -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd  gilberto -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd  julio -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_ADM

sudo useradd  alexandre -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd  aline -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd  marjorie -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_VEN

sudo useradd  andre -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd  jader -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd  renata -m  -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod  770 /adm
sudo chmod  770 /ven
sudo chmod  770 /sec
sudo chmod  777 /publico

echo "Fim....."




