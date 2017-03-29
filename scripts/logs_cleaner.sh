#!/bin/bash

sudo rm -v /var/log/*.gz

#ls -ltR /var/log/*/*/*.zip
sudo rm -rv /var/log/*/*/*.zip

#ls -ltR /var/log/*/*/*.gz
sudo rm -rv /var/log/*/*/*.gz

sudo rm -v  /var/log/Xorg.0.log.old
sudo rm -v /var/log/dmesg.0

#ls -ltR /var/log/apache2/*.gz
sudo rm -rv /var/log/apache2/*.gz

#ls -ltR /var/log/*/*.gz
sudo rm -rv /var/log/*/*.gz

#ls -ltR /var/log/*/*.zip
sudo rm -rv /var/log/*/*.zip

#ls -ltR /var/log/*/*.log.*
sudo rm -rv /var/log/*/*.log.*

sudo rm -rv /*.log


#ls -ltR /u01/app/oracle/product/11.2.0/xe/rdbms/log


#/u01/app/oracle/product/11.2.0/xe/nls

#ls -ltra /u01/app/oracle/fast_recovery_area/XE/onlinelog/


#/u01/app/oracle/product/11.2.0/xe/log/<hostname>
cd /u01/app/oracle/product/11.2.0/xe/log
sudo rm -rv $(ls -1 --ignore={$(hostname),"diag"})
cd /home/username

find /u01/app/oracle/product/11.2.0/xe/rdbms/log/*.trc -mtime +7 -exec rm {} \;


sudo rm -rvf /opt/activemq/apache-activemq-5.10.0/data/activemq-$HOSTNAME

sudo truncate --size=0 /opt/roundcube/current/logs/*

sudo find /opt/unblu/current/logs/*.log -mtime +2 -exec rm -v {} \;
sudo find /opt/unblu/current/logs/*.txt -mtime +2 -exec rm -v {} \;
