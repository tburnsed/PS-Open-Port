#Change for script to run
$DisplayName = "DISPLAYNAME"
$portNumber = "PORTNUMBER"
$Description = "DESCRIPTION" 

write-host "adding rules now..." -ForegroundColor yellow 
New-NetFirewallRule -DisplayName $DisplayName -Direction Outbound -LocalPort $portNumber -Protocol TCP -Action Allow -Description  $Description
New-NetFirewallRule -DisplayName $DisplayName -Direction Outbound -LocalPort $portNumber -Protocol UDP -Action Allow  -Description  $Description
New-NetFirewallRule -DisplayName $DisplayName -Direction Inbound -LocalPort $portNumber -Protocol TCP -Action Allow  -Description  $Description
New-NetFirewallRule -DisplayName $DisplayName -Direction Inbound -LocalPort $portNumber -Protocol UDP -Action Allow  -Description  $Description
write-host "Done" -ForegroundColor green 
pause