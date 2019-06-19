#!/bin/bash 

function squid(){
x=`systemctl  status squid  | sed -n 3p | awk '/active/ {print $2}'`
}


squid
if [ "$x" = "inactive" ]
then 
	systemctl start squid
	echo "Iniciando configurações pre-definidas"
	sleep 5
	rm -rf /etc/squid/squid.conf
	echo 
	cp  squid.conf   /etc/squid/
	echo 
	echo "finalizando aguarde..."
	sleep 5
	systemctl restart squid
	echo "Squid pronto para uso..."

elif [ "$x" = "active" ]
then  	
	
	echo "Iniciando configurações pre-definidas"
        sleep 5
        rm -rf /etc/squid/squid.conf
        echo
        cp  squid.conf   /etc/squid/
        echo
	systemctl restart squid
        echo "finalizando aguarde..."
        sleep 5
else 
	echo " Nada a ser feito sorry!"
fi


	echo "Squid pronto para uso..."

