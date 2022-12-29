#!/bin/bash

while IFS=,
read -r user password descripcion nombre_apellidos gupo_departamento
do
userdel -r $user

done< <(tail -n +2 usuarios.csv)

while IFS=,
read -r nombre descripcion
do

groupdel $nombre

done < <(tail -n +2 grupos.csv)
