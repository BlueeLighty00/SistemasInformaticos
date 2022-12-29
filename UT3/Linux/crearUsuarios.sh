#!/bin/bash

while IFS=,
read -r user password descripcion nombre_apellidos departamento
do

useradd -m -d "/home/${user}" -G $departamento -c $descripcion -p $password -s "/bin/bash" $user

chage -d0 $user

done< <(tail -n +2 usuarios.csv)

