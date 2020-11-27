#802.1x watchdog
#Arnaud d'Alayer, 2020-05-05

#J'ai remarqué que le statut de la connexion est 'Câble réseau non connecté' lorsque le supplicant n'embarque pas correctement.
#On recherche donc une connexion dans un tel état avec netsh
$etatConnexion = netsh lan show interface | Select-String -pattern 'seau non connect'
$temp = [System.Environment]::GetEnvironmentVariable('TEMP','Machine')

#S'il y a un résultat, on réinitialise la connexion
if ($etatConnexion -eq $null){
    Add-Content "$temp\802.1x-watchdog.txt" "$(Get-Date) - OK"
}
else {
	Add-Content "$temp\802.1x-watchdog.txt" "$(Get-Date) - 'Cable réseau non connecte' detecte"
	netsh interface set interface name="Ethernet" admin=DISABLED
	netsh interface set interface name="Ethernet" admin=ENABLED
}
