#!/bin/bash
echo 'Que dessea hacer \n 1- Crear solo usuario \n 2- Crear solo grupo \n 3- Crear usuario y aignarle su grupo'
read n
if [ $n = 1 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo 'Ingresa la contraseña'
	read pssw
	useradd $user -d /home/$user -m passwd $pssw
fi
if [ $n = 2 ]; then
	echo 'Ingresa el nombre de grupo'
	read $grp
	groupadd $grp
fi	
if [ $n = 3 ]; then
	echo 'Ingresa el nombre de usuario'
	read user
	echo -e 'Ingresa la contraseña'
	read pssw
	echo -e 'Ingresa el nombre de grupo'
	read $grp
	useradd $user -d /home/$user -m passwd $pssw -g $grp
fi
