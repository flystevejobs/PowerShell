# KB4012212 - Windows Server 2008
# KB4012217 KB4015551 KB4019216 - Windows Server 2012
# KB4012216 KB4015550 KB4019215 - Windows Server 2012 R2
# KB4013429 KB4019472 KB4015217 KB4015438 KB4016635 - Windows Server 2016

# List of all HotFixes containing the patch
$hotfixes = "KB4012212", "KB4012217", "KB4015551", "KB4019216", "KB4012216", "KB4015550", "KB4019215", "KB4013429", "KB4019472", "KB4015217", "KB4015438", "KB4016635"

# Search for the HotFixes
$hotfix = Get-HotFix -ComputerName "(computer name)" | Where-Object {$hotfixes -contains $_.HotfixID} | Select-Object -property "HotFixID"

# See if the HotFix was found
if (Get-HotFix | Where-Object {$hotfixes -contains $_.HotfixID}) {
   # $mon.FireActions = $false
     #$mon.Details = "Found HotFix: " + $hotfix.HotFixID
    # a blank value removes the property 
   # $mon.SetComputerCustomPropByID(0, "NEEDS-MS17-010-FIX", "")
   echo "doesn't need"
} else {
#    $mon.FireActions = $true
 #   $mon.Details = "Didn't Find HotFix"
  #  $mon.SetComputerCustomPropByID(0, "NEEDS-MS17-010-FIX", "YES") 
  echo "needs"
}