grep MemTotal /proc/meminfo
sudo grep MemTotal /proc/meminfo > Filtro_Basico.txt
sudo dmidecode -t chassis
sudo dmidecode -t chassis | grep -A1 "Chassis Information" >> Filtro_Basico.txtsudo dmidecode -t chassis | grep -A1 "Chassis Information" >> Filtro_Basico.txt
