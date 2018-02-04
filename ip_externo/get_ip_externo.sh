#!/bin/bash

DATE_DAY=$(date +%d/%m/%Y)
DATE_LOG=$(date +%Y/%m/%d_%H:%M:%S)

IP=$(curl http://e-meuip.com/ > e-meuip.com.tmp && cat e-meuip.com.tmp | grep $DATE_DAY | cut -d "|" -f2| cut -d "<" -f1 | tr -d " " )

echo $IP"|"$DATE_LOG >>  /root/scripts/ip_externo/ip_externo.log

### TODO
### Remover excesso de linhas de log
#wc -l  ip_externo.log | cut -d " " -f1
