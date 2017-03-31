If ($PSCmdlet.ShouldProcess("Cancel print job(s)","Printer")) 
{ 
    If($PrinterInfo) 
    { 
        Try 
        { 
            Write-Verbose "Cancelling printer jobs." 
            $PrinterInfo | Foreach{$_.CancelAllJobs()} 
            Write-Host "Successfully cancel print job(s)." 
        } 
        Catch 
        { 
            Write-Host "Failed to cancel print jobs stuck in the print queue." 
        } 
    } 
    Else 
    { 
        Write-Host "Cannot find any print jobs stuck in the print queue." 
    } 
} 