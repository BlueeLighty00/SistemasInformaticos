
#Bloqueo de cuentas 
#Se configura para que se bloquee si se falla al intento 5.
net accounts /lockoutthreshold:5

#Duración del bloqueo 2 horas
net accounts /lockoutduration:120

#Ventana de bloqueo (tiempo en minutos antes de que se restablezca el contador de intentos fallidos de contraseña )
net accounts /lockoutwindow:60

#Establecer los dias máximos para cambiar el password, ejempo 14 días.
net accounts /maxpwage:14

#Establecer los dias mínimos para cambiar el password, ejempo 2 días.
net accounts /minpwage:2

#El numero de contraseñas recordadas
net accounts /UNIQUEPW:5



#Establecer la longitud mínima del password, ejemplo: 8
net accounts /minpwlen:8

#Para consultar la configuración de los parámetros establecidos
net accounts

#Habilitamos que la contraseña tiene que tener una complejidad alta
secedit /export /cfg c:\secpol.cfg
(gc C:\secpol.cfg).replace("PasswordComplexity = 0", "PasswordComplexity = 1") | Out-File C:\secpol.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
rm -force c:\secpol.cfg -confirm:$false
