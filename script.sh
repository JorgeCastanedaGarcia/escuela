#!/bin/bash
echo 'Que dessea hacer'
echo '1- Crear solo un usuario'
echo '2- Crear solo grupo'
echo '3- Crear usuario y aignarle su grupo'
echo '4-Asignar un suario a un grupo'
read n
if [ $n = 1 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa la contraseña'
	read pssw
	sudo useradd $user -d /home/$user -m #passwd $pssw
fi
if [ $n = 2 ]; then
	echo 'Ingresa el nombre de grupo'
	read $grp
	sudo groupadd $grp
fi	
if [ $n = 3 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
#	echo 'Ingresa la contraseña'
#	read pssw
	echo 'Ingresa el nombre de grupo'
	read $grp
	sudo useradd $user -d /home/$user '''passwd $pssw''' -g $grp
fi
if [ $n = 4 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa el nombre de grupo'
	read $grp
	sudo useradd $user $grp
fi
