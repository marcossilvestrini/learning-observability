# Script path
$scriptPath = $PSScriptRoot

# Copy keys prometheus
For($i=1;$i -lt 4;$i++){
    $SSHKey="$($scriptPath | Split-Path -Parent)\.vagrant\machines\rock9-prometheus-$i\vmware_workstation\private_key"    
    Copy-Item $SSHKey -Destination "F:\Projetos\vagrant-pk\rocky9-prometheus-$i"
}

# Copy keys grafanas
For($i=1;$i -lt 2;$i++){
    $SSHKey="$($scriptPath | Split-Path -Parent)\.vagrant\machines\rock9-grafana-$i\vmware_workstation\private_key"    
    Copy-Item $SSHKey -Destination "F:\Projetos\vagrant-pk\rocky9-grafana-$i"
}

