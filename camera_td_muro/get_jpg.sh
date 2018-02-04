#!/bin/bash


#URL_CAM="http://10.0.0.247:81/snapshot.jpg?user=admin&password=Tianny19"
URL_CAM="http://10.0.0.247:81/snapshot.jpg?"

PATH_TMP="/root/scripts/camera_td_muro/tmp"

DATE_FULL=$(date +%Y%m%d%H%M%S)
DATE_DIA=$(date +%Y%m%d)
DATE_SEMANA=$(date +%V)
DATE_HORA=$(date +%H)

PASS=$(cat /root/scripts/camera_td_muro/cam.pwd)
URL_CAM=$URL_CAM$PASS



#/hd_externo/Cameras/camera_td_muro/snapshot/20180121_semana03/23h/20180121235947.jpg

PATH_FULL="/hd_externo/Cameras/camera_td_muro/snapshot/SEMANA_"$DATE_SEMANA"/DIA_"$DATE_DIA"/HORA_"$DATE_HORA"/"
FILE_NAME=$DATE_FULL".jpg"

PATH_TMP=$PATH_TMP"/Dia_"$DATE_DIA"-Semana_"$DATE_SEMANA"/HORA_"$DATE_HORA
echo "CAMINHO= "$PATH_FULL

### Verifica se o diretorio existe
if [ ! -d "$PATH_TMP" ]; 
	then 
	echo "Diretorio não encontado. Criado . . . "$PATH_TMP
	mkdir -p $PATH_TMP
else
	echo "DIR TMP EXISTE"

	wget -O ${PATH_TMP}/${DATE_FULL}.jpg ${URL_CAM}

	fi
