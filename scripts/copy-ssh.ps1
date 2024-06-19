# Script path
$scriptPath = $PSScriptRoot

# Copy keys
For($i=1;$i -lt 4;$i++){
    $SSHKey="$($scriptPath | Split-Path -Parent)\.vagrant\machines\rock9-prometheus-$i\vmware_workstation\private_key"    
    Copy-Item $SSHKey -Destination "F:\Projetos\vagrant-pk\rocky9-prometheus-$i"
}
