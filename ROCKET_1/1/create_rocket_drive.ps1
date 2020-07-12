
$executionPolicy = Get-ExecutionPolicy
if($executionPolicy -ne 'Bypass') {
    Set-ExecutionPolicy Bypass -Scope LocalMachine -Force
}

if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
[Security.Principal.WindowsBuiltInRole] "Administrator")) {
    messageBox('Start RocketDrive as administrator')
    break
}
else {
  . (Join-Path $PSScriptRoot 'resources.ps1')
    create_rocket_drive | Out-Null
}



