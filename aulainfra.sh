#!/bin/bash

echo "Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários e adicionando em grupos"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 777 /publico
