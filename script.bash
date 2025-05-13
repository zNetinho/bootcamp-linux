#! /bin/bash

#cria usuário
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

#Altera senha de todos e solicita mudança de senha no primeiro acesso
sudo passwd carlos -e
sudo passwd maria -e
sudo passwd joao -e
sudo passwd debora -e
sudo passwd sebastiana -e
sudo passwd roberto -e
sudo passwd josefina -e
sudo passwd amanda -e
sudo passwd rogerio -e

#cria grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#adiciona aos grupos
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao
usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto
usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Acabou"
