#!/bin/bash
echo 'Que dessea hacer'
echo '1- Crear un usuario alumno'
echo '2- Crear un usuario profesor'
echo '3- Crear un usuario administrativo'
read n
if [ $n = 1 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa la contraseña'
	read pssw
	sudo useradd $user -d /home/escuela/alumnos/$user -m -g alumnos
	sudo passwd $pssw
fi
if [ $n = 2 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa la contraseña'
	read pssw
	sudo useradd $user -d /home/escuela/profesores/$user -m -g profesores
	sudo passwd $pssw
fi
if [ $n = 3 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa la contraseña'
	read pssw
	sudo useradd $user -d /home/escuela/administrativos/$user -m -g administrativos
	sudo passwd $pssw
fi
