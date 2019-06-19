#!/bin/bash 

echo " Configurando Docker para inicializar junto com sistema. Aguarde..."
sleep 5
echo    
chkconfig docker on
echo 
systemctl start docker
echo "APP pronto para uso obrigado!"