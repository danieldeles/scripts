#!/bin/bash


DIR_TELEGRAM="/root/scripts/telegram"

SEND_MSG_FILE=$DIR_TELEGRAM"/sending/send_msg.telegram"

CHATID=$(cat $DIR_TELEGRAM"/chatid.pwd")
KEY=$(cat $DIR_TELEGRAM"/token.pwd")

TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"





# Monitorar
while :
do

	### VERIFICA SE O ARQUIVO send_msg.telegram existe, se existir, lê, evia e apaga
	if [ -f "$SEND_MSG_FILE" ] 
	then 
		#Arquivo encontrado, enviando Mensagens
		echo 'Arquivo encontrado'
		MSG=$(cat $SEND_MSG_FILE)

		curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$MSG" $URL >/dev/null

		rm -rf $SEND_MSG_FILE
       
	fi


	# delay
	sleep 7
done
