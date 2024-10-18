#!/bin/bash
sudo fdisk /dev/sdc << EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e
4


n
l
5

+1G
n
l
6

+1G
n
l
EOF

lsblk

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc4
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11

lsblk
sudo lsblk -f

sudo mount /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc7 /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc10 /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc11 /Examenes-UTN/profesores/

sudo bash -c 'cat << EOF >> /etc/fstab
> UUID=0966f2c7-7140-483d-b79d-00bd0c40bfa3 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0
> UUID=14be6981-dd53-4cd0-b89c-0a203614fa50 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0
> UUID=33ea5bc2-6bd5-402b-8e3a-35f55ea5787c /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0
> UUID=5bd354b7-298b-45dd-b86f-92a3d3824136 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0
> UUID=fe6d2527-97f3-4db6-a3e8-fabe86181add /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0
> UUID=5f41e881-16c3-4712-b1d8-704116ce5d29 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0
> UUID=f15f2c87-54ce-4bc5-b5d0-8eb6058abc5e /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0
> UUID=aa1c8f50-b40a-4c76-b1c1-658484c1d8dd /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0
> UUID=012528f9-381c-444d-980c-b7b24af21d9b /Examenes-UTN/profesores/ ext4 defaults 0 0
> UUID=cc4551b5-9ead-46b5-b457-d546ef328dd4 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0
> EOF'
