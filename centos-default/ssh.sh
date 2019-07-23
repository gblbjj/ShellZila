#!/bin/bash

echo "Iniciando  configuração  de S.O"
echo 
yum  update -y 
sleep 5 
echo 
echo "configurando rede"
sed -i 's/ONBOOT=no/ONBOOT=yes/g' /etc/sysconfig/network-scripts/ifcfg-enp0s3
sleep 5
echo
sed -i 's/ONBOOT=no/ONBOOT=yes/g' /etc/sysconfig/network-scripts/ifcfg-enp0s8
sleep 5
echo 
systemctl restart network
echo
echo "configurando rede"
echo 
sleep 5
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/sysconfig/network-scripts/ifcfg-enp0s8
echo 
systemctl restart sshd 
echo 
sleep 5
echo 
echo "Configurando sudoers"
sed -i 's/root ALL=(ALL) ALL/root ALL=NOPASSWD: ALL/g' /etc/sudoers
echo 
sleep 3
echo 
echo "digite um nome para seu  hostname: "
read hostname
hostnamectl set-hostname $hostname
echo
hostnamectl set-hostname $hostname --static
echo
hostnamectl set-hostname $hostname --static
echo
hostnamectl set-hostname $hostname --transient
echo
sleep 5
echo
systemctl restart systemd-hostnamed
echo
echo "Server pronta para lab"



