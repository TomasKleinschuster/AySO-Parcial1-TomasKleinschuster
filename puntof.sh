#!/bin/bash
texto_ip="Mi IP Publica es: "
texto_usuario="Mi usuario es: "
texto_hash="El Hash de mi usuario es: "

{
echo -n $texto_ip
curl -s ifconfig.me | grep 1
} > /home/vagrant/parcial1/filtro_avanzado.txt
{
echo -n $texto_usuario
whoami
} >> /home/vagrant/parcial1/filtro_avanzado.txt
{
echo -n $texto_hash
sudo grep vagrant /etc/shadow
} >> /home/vagrant/parcial1/filtro_avanzado.txt
