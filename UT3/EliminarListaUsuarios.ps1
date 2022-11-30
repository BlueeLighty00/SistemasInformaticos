#Eliminar la lista de Usuarios en los que puedes loguear
$file_users=Import-Csv -Path usuarios.csv 
foreach ($user in $file_users) {
  REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /V $user.cuenta /T REG_DWORD /D 0
}
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /V $env:UserName /T REG_DWORD /D 0
