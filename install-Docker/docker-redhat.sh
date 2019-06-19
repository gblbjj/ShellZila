#!/bin/bash

x=`cat /etc/*-release | sed -n 1p | cut -d"=" -f2 | awk -F '[""]' '{print $2}' | awk '{print $1 , $2}'`

if [ "$x" = "Red Hat" ]
then
        echo " S.O reconhecido "
        sleep 5
        yum update -y
        echo
        yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
        echo
        yum install -y yum-utils device-mapper-persistent-data lvm2
        echo
        yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
        echo
        yum update -y
        echo
        yum install -y docker-ce
        echo "finalizando intalação aguarde..."
        sleep 10
else
        echo "S.O não reconhecido"
fi
source startapp.sh