#!/bin/bash

echo -e "\nCriação de Estrutura de Usuários, Diretórios e Permissões"
echo -e "\nCriando Diretórios...\n"

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretariado

echo -e "\nCriando Grupos de usuários..."

groupadd Grupo_adm
groupadd Grupo_vendas
groupadd Grupo_sec

echo -e "\nCriando Usuários..."

useradd carlos -m -s /bin/bash -G Grupo_adm -p $(openssl passwd -crypt 1234)
useradd maria -m -s /bin/bash -G Grupo_adm -p $(openssl passwd -crypt 1234)
useradd joao -m -s /bin/bash -G grupo_adm -p $(openssl passwd -crypt 1234)

useradd debora -m -s /bin/bash -G Grupo_vendas -p $(openssl passwd -crypt 1234)
useradd sebastiao -m -s /bin/bash -G Grupo_vendas -p $(openssl passwd -crypt 1234)
useradd roberto -m -s /bin/bash -G Grupo_vendas -p $(openssl passwd -crypt 1234)

useradd josefina -m -s /bin/bash -G Grupo_sec -p $(openssl passwd -crypt 1234)
useradd amanda -m -s /bin/bash -G Grupo_sec -p $(openssl passwd -crypt 1234)
useradd rogerio -m -s /bin/bash -G Grupo_sec -p $(openssl passwd -crypt 1234)

echo -e "\nAtribuindo Permissões dos Diretórios..."


chown root:Grupo_adm /adm
chown root:Grupo_vendas /vendas
chown root:Grupo_sec /secretariado

chown 777 /publico
chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretariado

echo -e "\nFinalizada a criação!\n"

