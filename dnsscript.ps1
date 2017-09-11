$computer = get-content C:\Users\Administrator\Desktop\computername.txt
 $NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername $computer |where{$_.IPEnabled -eq “TRUE”}
   Foreach($NIC in $NICs) {

$DNSServers = “192.168.1.10",”192.168.1.2"
  $NIC.SetDNSServerSearchOrder($DNSServers)
  $NIC.SetDynamicDNSRegistration(“TRUE”)
 }
