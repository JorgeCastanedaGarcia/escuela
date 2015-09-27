#!/bin/bash
sudo groupadd administrativos
sudo groupadd profesores
sudo groupadd alumnos

cd /home
sudo mkdir escuela

cd escuela
sudo mkdir administrativos
sudo mkdir profesores
sudo mkdir alumnos

#chown administrativos administrativos

chgrp administrativos administrativos
chgrp profesores profesores
chgrp alumnos alumnos

#chmod 740 alumnos
#chmod 740 profesores
#chmod 740 administrativos


