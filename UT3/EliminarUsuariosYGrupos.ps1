#Creación de usuarios de forma masiva.

$file_users=Import-Csv -Path usuarios.csv 
foreach ($user in $file_users) { 
  $clave=ConvertTo-SecureString $user.password -AsPlainText -Force
  Remove-LocalUser $user.cuenta 
}

# Creación de grupos de forma masiva.

$file_groups=Import-Csv -Path Grupos.csv 
foreach ($group in $file_groups) { 
  Remove-LocalGroup $group.nombre
}

