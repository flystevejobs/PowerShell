<#
.synopsis
This is the short explaination
.Description
This is the long description
.Parameter ComputerName
This is for remote computers
.Example
Diskinfo -ComputerName remote
This is for a remote computer
#>
function get-diskinfo{
[cmdletbinding()]
param(
[parameter(mandatory=$true)]
[string[]]$computername,
$bogus
)
Get-WmiObject -ComputerName $computername win32_logicaldisk -Filter "deviceID='c:'"
}