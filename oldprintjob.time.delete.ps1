Get-WmiObject Win32_PrintJob | 
Where-Object { $_.ConvertToDateTime($_.TimeSubmitted) -lt $old } |
Foreach-Object { $_.Delete() }