#!/bin/bash 


echo "Iniciando configurações pre-definidas"
sleep 5
rm -rf /etc/squid/squid.conf
echo 
echo "$(sed 's/1/2/g' squid.conf)" >  "squid.conf" >  /etc/squid/squid.conf
echo 
systemctl start squid 
echo 
systemctl enable squid 
echo "finalizando aguarde..."
sleep 5
systemctl start squid 
echo "Squid pronto para uso..."

