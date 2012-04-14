#!/bin/sh
#Boot animation handler.
#Catch bootanimation.zip and rename to sanim.zip
if [ -f /system/media/bootanimation.zip]; then
	mv /system/media/bootanimation.zip /system/media/sanim.zip
fi
#if sanim.zip exists, launch android bootanimation binary, otherwise launch default samsung animation binary
if [ -f /system/media/sanim.zip ]; then
	/system/bin/bootanimation
else
	/system/bin/samsungani
fi
