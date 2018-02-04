#!/bin/bash


cp -R /root/scripts/camera_td_muro/tmp/D* /hd_externo/Cameras/camera_td_muro/snapshot/


if [ $? -eq 0 ]
then
	rm -rf /root/scripts/camera_td_muro/tmp/D* 

fi
