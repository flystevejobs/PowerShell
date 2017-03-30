$user = Read-Host -Prompt 'Input the user name'
$accountToUnlock = Search-ADAccount -LockedOut | where {$_.Name -like $user + "*" }

if (-not $accountToUnlock){ 
    $output =  "Could not find user name:{0} " -f $user
    Write-Host $output
    exit
}

Unlock-ADAccount -Identity $accountToUnlock -Verbose
$output = "User: {0} full address:{1} unlocked" -f $accountToUnlock.Name, $accountToUnlock.DistinguishedName

Write-Output $output