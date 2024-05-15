# Script path
$scriptPath = $PSScriptRoot
$SSHKey1="$($scriptPath | Split-Path -Parent)\.vagrant\machines\rock9-prometheus-1\vmware_workstation\private_key"
$SSHKey2="$($scriptPath | Split-Path -Parent)\.vagrant\machines\rock9-prometheus-2\vmware_workstation\private_key"

# Copy ssh key
Copy-Item $SSHKey1 -Destination "F:\Projetos\vagrant-pk\rocky9-prometheus-1"
Copy-Item $SSHKey2 -Destination "F:\Projetos\vagrant-pk\rocky9-prometheus-2"
