# Script path
$scriptPath = $PSScriptRoot
$SSHKey="$($scriptPath | Split-Path -Parent)\.vagrant\machines\default\vmware_workstation\private_key"

# Copy ssh key
Copy-Item $SSHKey -Destination "F:\Projetos\vagrant-pk\rocky9-prometheus"
