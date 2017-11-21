$vcenter = "##vcenter-hostname##
$clustername = "##cluster##
connect-viserver -server $vcenter

Get-Cluster $clustername | Get-VMhost | Get-VMHostHBA -Type FibreChannel | Select VMHost,Device,@{N="WWN";E={"{0:X}" -f $_.PortWorldWideName}} | Sort VMhost,Device