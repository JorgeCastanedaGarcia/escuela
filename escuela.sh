#!/bin/bash
echo 'Que dessea hacer'
echo '1- Crear un usuario alumno'
echo '2- Crear un usuario profesor'
echo '3- Crear un usuario administrativo'
read n
if [ $n = 1 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	sudo useradd $user -d /home/escuela/alumnos/$user -m -g alumnos
	sudo passwd $user
	cd /home/escuela/alumnos/
	sudo chmod 705 $user
fi
if [ $n = 2 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	sudo useradd $user -d /home/escuela/profesores/$user -m -g profesores
	sudo passwd $user
	cd /home/escuela/profesores/
	sudo chmod 750 $user
fi
if [ $n = 3 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	sudo useradd $user -d /home/escuela/administrativos/$user -m -g administrativos
	sudo passwd $user
	cd /home/escuela/administrativos/
	sudo chmod 770 $user
fi
