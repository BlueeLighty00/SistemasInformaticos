#Creación de usuarios de forma masiva.

$file_users=Import-Csv -Path usuarios.csv 
foreach ($user in $file_users) { 
  $clave=ConvertTo-SecureString $user.password -AsPlainText -Force
  New-LocalUser $user.cuenta -Password $clave -FullName $user.nombre_apellidos -Description $user.descripcion -AccountNeverExpires 
  
  Set-LocalUser $user.cuenta -PasswordNeverExpires $false
  net user $user.cuenta /logonpasswordchg:yes


  #Añadimos la cuenta de usuario en el grupo de Usuarios del sistema

  $Groups = ("usuarios",$user.grupo_departamento)

  foreach ($Group in $Groups){
    Add-LocalGroupMember -Group $Group -Member $user.cuenta
  
  }
}
