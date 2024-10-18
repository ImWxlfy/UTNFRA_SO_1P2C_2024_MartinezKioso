IP_Publica=$(curl -s ifconfig.me)

Usuario=$(whoami)

Hash_Usuario=$(echo -n $Usuario | sha256sum)

URL_Repositorio=$(git remote get-url origin)

echo "Mi IP Publica es: $IP_Publica" > Filtro_Avanzado.txt
echo "Mi usuario es: $Usuario" >> Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $Hash_Usuario" >> Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $URL_Repositorio" >> Filtro_Avanzado.txt
