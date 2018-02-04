#!/bin/bash


URL_CAM="http://10.0.0.247:81/snapshot.jpg?user=admin&password=Tianny19"

PATH_TMP="/root/scripts/camera_td_muro/tmp"
PATH_HD="/hd_externo/Cameras/camera_td_muro/snapshot"

DATE_FULL=$(date +%Y%m%d%H%M%S)
DATE_DIA=$(date +%Y%m%d)
DATE_SEMANA=$(date +%V)
DATE_HORA=$(date +%H)

SEMANAS_BKP=3

#/hd_externo/Cameras/camera_td_muro/snapshot/Dia_20180131-Semana_05/HORA_14/


FILE_NAME=$DATE_FULL".jpg"

#PATH_IMG=$PATH_HD"/Dia_"$DATE_DIA"-Semana_"$DATE_SEMANA"/HORA_"$DATE_HORA
PATH_IMG=$PATH_HD"/Dia_"$DATE_DIA"-Semana_"$DATE_SEMANA

### Calcula as semanas que ser√o removidas
let DATE_DEL=DATE_SEMANA-SEMANAS_BKP

echo DATE_DEL=$DATE_DEL
PATH_IMG=$PATH_HD"/Dia_"$DATE_DIA"-Semana_"$DATE_DEL

echo "CAMINHO= "$PATH_IMG

ls $PATH_IMG
#rm -rf $PATH_IMG
