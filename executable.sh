#!/bin/bash
cd /home/jorge/Documentos/Escuela	
#continuar=y
#while [ $continuar=y ]:
#do
#{
echo 'Bash para crear una "escuela" con los siguentes grupos:'
echo 'Administrativos, Profesores y Alumnos'
echo '¿Qué proceso desea hacer?'
echo '1.- Borrar todos los directorios y grupos'
echo '2.- Crear todos los grupos y directorios de los grupos'
echo '3.- Crear usuarios: alumnos, profesores, administrativos'
read opc
if [ $opc = 1 ]; then
	sudo sh borrar.sh
	echo '¿Desea continuar?,presione [y] si o [n] para salir'
	read opt
	continuar=opt
fi
if [ $opc = 2 ]; then
	sudo sh carpetas.sh
	echo '¿Desea continuar?,presione [y] si o [n] para salir'
	read opt
	continuar=opt
fi
if [ $opc = 3 ]; then
	sudo sh escuela.sh
	echo '¿Desea continuar?,presione [y] si o [n] para salir'
	read opt
	continuar=opt
fi
#}
#done
