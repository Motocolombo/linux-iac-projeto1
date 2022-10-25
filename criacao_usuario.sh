#!/bin/bash

echo "-==Criando diretórios==-"
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "-==Criação de Grupos==-"
groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "-==Criação de Usuários==-"
useradd carlos -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_ADM
useradd maria -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_ADM
useradd joao -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_ADM

useradd josefina -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_SEC
useradd amanda -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_SEC
useradd rogerio -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_SEC

useradd debora -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_VEN
useradd sebastiana -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_VEN
useradd roberto -p $(openssl passwd -5 senha123) -s /bin/bash -m -G GRP_VEN

echo "-==Editando perimissões==-"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
