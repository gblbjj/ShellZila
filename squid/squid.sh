#!/bin/bash

x=`cat /etc/*-release | cut -d"=" -f2 | sed -n 9p | awk -F '[""]' '{print $2}'`

 if [ "$x" = "Ubuntu 16.04.6 LTS" ]
 then 
        echo "S.O  reconhecido ..."
        sleep 5
        echo
        apt-get update -y 
        echo "Iniciando instalação"
        sleep 5
        apt-get -y install squid 
        echo 
        echo "Squid instalado com sucesso! Iniciando configuração aguarde..."
        sleep 5
 else 
        echo "S.O não reconhecido"
 fi        
source config-squid.sh
