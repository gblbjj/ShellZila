#!/bin/bash

##########################################################################################################
############Identificar S.O correto

x=`cat /etc/*-release | cut -d"=" -f2 | sed -n 9p | awk -F '[""]' '{print $2}'`

##########################################################################################################


if [ "$x" = "Ubuntu 16.04.6 LTS" ]
then
echo "Iniciar instalação do docker aguarde..."
sleep 4
echo
apt-get update -y
sleep 5
echo
 apt install apt-transport-https ca-certificates curl software-properties-common -y
echo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo
 add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
echo
apt-get  update -y
echo
 apt install docker-ce -y
echo
echo " Tudo ocorreu como planejado aguarde enquanto iniciamos o serviço"
sleep 5
echo

echo "Obrigado por aguardar  instalação realizada com sucesso!"
else 
    echo "S.O não reconhecido"
fi    
