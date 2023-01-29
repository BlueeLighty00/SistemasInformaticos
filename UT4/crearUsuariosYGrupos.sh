#!/bin/bash

groupadd sinInformacion
groupadd desarrollo
groupadd explotacion
groupadd dirProyectos_R
groupadd dirProyectos_W
groupadd dirProyectos_X
groupadd dirSrc_R
groupadd dirSrc_W
groupadd dirSrc_X
groupadd dirPruebas_R
groupadd dirPruebas_W
groupadd dirPruebas_X

useradd -m -G sinInformacion usu_sinInformacion
useradd -m -G desarrollo usu_desarrollo
useradd -m -G explotacion usu_explotacion


usermod -a -G dirSrc_R,dirSrc_W,dirSrc_X,dirProyectos_X usu_desarrollo
usermod -a -G dirProyectos_X,dirSrc_R,dirSrc_W,dirSrc_X,dirPruebas_R,dirPruebas_W,dirPruebas_X usu_explotacion

