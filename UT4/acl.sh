#!/bin/bash

mkdir /proyectos

setfacl -m d:g:sinInformacion:rwx /proyectos
setfacl -m g:sinInformacion:rwx /proyectos
setfacl -m d:other:0 /proyectos
setfacl -m other:0 /proyectos
setfacl -m mask:rwx /proyectos
setfacl -m d:mask:rwx /proyectos

mkdir -p /proyectos/{pruebas,src}


setfacl -m g:dirProyectos_R:r /proyectos
setfacl -m g:dirProyectos_W:w /proyectos
setfacl -m g:dirProyectos_X:x /proyectos

setfacl -m g:dirPruebas_R:r /proyectos/pruebas
setfacl -m g:dirPruebas_W:w /proyectos/pruebas
setfacl -m g:dirPruebas_X:x /proyectos/pruebas
setfacl -m d:g:dirPruebas_R:r /proyectos/pruebas
setfacl -m d:g:dirPruebas_W:w /proyectos/pruebas
setfacl -m d:g:dirPruebas_X:x /proyectos/pruebas

setfacl -m g:dirSrc_R:r /proyectos/src
setfacl -m g:dirSrc_W:w /proyectos/src
setfacl -m g:dirSrc_X:x /proyectos/src

setfacl -m d:g:dirSrc_R:r /proyectos/src
setfacl -m d:g:dirSrc_W:w /proyectos/src
setfacl -m d:g:dirSrc_X:x /proyectos/src

echo "hola 1" > /proyectos/pruebas/pruebas1.dat
echo "hola 2" > /proyectos/pruebas/pruebas2.dat

echo "proyecto 1" >/proyectos/proyecto2.dat
echo "proyecto 2"> /proyectos/proyecto1.dat
echo "#!/bin/bash" > /proyectos/src/app2.sh
echo "echo \" Hola :D\"" >> /proyectos/src/app2.sh
echo "#!/bin/bash" > /proyectos/src/app1.sh
echo "echo \" Hola :D\"" >> /proyectos/src/app1.sh
