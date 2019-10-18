#!/bin/bash 
# vamos instala um zabbix agent?



echo -n "Digite o nome do seu Hostname: "
read hostname

if [ -x /usr/bin/yum ]
then

HOSTNAME=$hostname

        yum -y update
        rpm -Uvh http://repo.zabbix.com/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm
        yum -y install zabbix-agent
        sed -i 's/Server=127.0.0.1/Server=192.168.122.245/g' /etc/zabbix/zabbix_agentd.conf
        sed -i 's/ServerActive=127.0.0.1/ServerActive=192.168.122.245/g' /etc/zabbix/zabbix_agentd.conf
        sed -i "s/Hostname=Zabbix server/Hostname=$HOSTNAME/g" /etc/zabbix/zabbix_agentd.conf

        systemctl start zabbix-agent
        systemctl enable zabbix-agent

fi
