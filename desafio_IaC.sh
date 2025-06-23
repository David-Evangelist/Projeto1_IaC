#!/bin/bash

echo "Criando Grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_SEC
sudo groupadd GRP_VEN

echo "Criando Diretórios..."

sudo mkdir /publico
sudo mkdir /ven
sudo mkdir /sec
sudo mkdir /adm

echo "Especificando permissões dos diretórios..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_SEC /sec
sudo chown root:GRP_VEN /ven

sudo chmod 770 /adm
sudo chmod 770 /sec
sudo chmod 770 /ven
sudo chmod 777 /publico


echo "Criando usuários..."

sudo useradd carlos -c "Carlos Soares" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_ADM
sudo useradd maria -c "Maria Gorete" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_ADM
sudo useradd joao -c "João Victor" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_ADM

sudo useradd debora -c "Débora Vitória" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_VEN
sudo useradd roberto -c "Roberto Miranda" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_VEN

sudo useradd josefina -c "Josefina Maria" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_SEC
sudo useradd amanda -c "Amanda Carla" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_SEC
sudo useradd rogerio -c "Carlos Soares" -m -s /bin/bash -p $(openssl passwd -6 password123) -G GRP_SEC


echo "Execução finalizada com sucesso!!"
