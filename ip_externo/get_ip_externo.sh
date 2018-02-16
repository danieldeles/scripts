#!/bin/bash

DATE_DAY=$(date +%d/%m/%Y)
DATE_LOG=$(date +%Y/%m/%d_%H:%M:%S)

IP=$(curl http://e-meuip.com/ > e-meuip.com.tmp && cat e-meuip.com.tmp | grep $DATE_DAY | cut -d "|" -f2| cut -d "<" -f1 | tr -d " " )

LAST_IP=$(tail -n1 /root/scripts/ip_externo/ip_externo.log | cut -d "|" -f1)


echo $IP"|"$DATE_LOG >>  /root/scripts/ip_externo/ip_externo.log

#echo IP= $IP
#echo LAST_IP= $LAST_IP

### Envia o novo IP ...
if [ $IP != $LAST_IP ]
then
	echo "Novo IP:"$IP >> /root/scripts/ip_externo/../telegram/sending/send_msg.telegram
fi


### TODO
### Remover excesso de linhas de log
#wc -l  ip_externo.log | cut -d " " -
