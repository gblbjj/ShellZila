#!/bin/bash 


echo "Iniciando configurações pre-definidas"
sleep 5
rm -rf /etc/squid/squid.conf
echo 
echo "squid.conf" > /etc/squid/squid.conf
echo 
systemctl start squid 
echo 
chkconfig squid on
echo "finalizando aguarde..."
sleep 5
systemctl start squid 
echo "Squid pronto para uso..."

