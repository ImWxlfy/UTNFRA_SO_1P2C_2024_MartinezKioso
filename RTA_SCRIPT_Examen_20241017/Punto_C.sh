#!/bin/bash
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo su

useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(grep vagrant /etc/shadow | awk -F ':' '{print$2}')" p1c2_2024_a1
useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(grep vagrant /etc/shadow | awk -F ':' '{print$2}')" p1c2_2024_A2
useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(grep vagrant /etc/shadow | awk -F ':' '{print$2}')" p1c2_2024_A3
useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$(grep vagrant /etc/shadow | awk -F ':' '{print$2}')" p1c2_2024_P1

su vagrant

sudo chown p1c2_2024_a1 /Examenes-UTN/alumno_1
sudo chown :p1c2_2024_a1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown :p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown :p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1 /Examenes-UTN/profesores/
sudo chown :p1c2_2024_gProfesores /Examenes-UTN/profesores/

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores/

su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_a1
vagrant
su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
vagrant
su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
vagrant
su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
vagrant
