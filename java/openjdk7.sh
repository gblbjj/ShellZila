#!/bin/bash

function god () {

x=`cat /etc/*-release | sed -n 1p | cut -d "=" -f2`

}

god 
case "$x" in
    Ubuntu)
        echo "S.O reconhecido"
        echo 
        echo "inicinado instalação openjdk-7"
        apt-get update -y    
        echo 
        apt-get install default-jre -y 
        echo 
        apt-get install default-jdk -y
        echo 
        echo "jdk instalado com sucesso" 
    ;;
    CentOS)
        echo "S.O não reconhecido"
    ;;
esac            