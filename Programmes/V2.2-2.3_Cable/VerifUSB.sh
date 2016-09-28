#! /bin/sh
#Titre

nonUSB=-1
for fichier in "/dev"/*
do
	fichier2=`expr substr "$fichier" 9 3`
	if [ "$fichier2" = USB ]; then
		nonUSB=1
		echo $fichier >> USB.temp
	fi
done
if [ "$nonUSB" = -1 ]; then
	echo "noUSB" >> USB.temp
fi

exit 0
