$vcenter = "##vcenter-hostname##
connect-viserver -server $vcenter

Get-Folder "Servers" | Get-Inventory -NoRecursion | Shutdown-VMGuest