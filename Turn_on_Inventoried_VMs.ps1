$vcenter = "##vcenter-hostname##
connect-viserver -server $vcenter

Get-Folder "SQL_FOLDER" | Get-Inventory -NoRecursion | Start-VM | Get-VMQuestion | Set-VMQuestion –Option "I moved it"