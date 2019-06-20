#!/bin/bash 

x=`who | awk '{print$1}'`

while true; do 

    if [ "$x" = "gblbjj" ]
    then 
            echo "atualizando sistema aguade..."
            apt-get update -y 
            exit
    else 
        echo "User não reconhecido" 
    fi           

done 