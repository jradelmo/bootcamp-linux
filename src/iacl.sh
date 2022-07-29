#!/bin/zsh

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos dos usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/zsh -p $(opeenssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Finalizado"
