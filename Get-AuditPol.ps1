

Clear
mkdir $env:USERPROFILE\B4SU -ErrorAction SilentlyContinue
auditpol /get /category:* | Out-File -FilePath "$env:USERPROFILE\B4SU\$env:COMPUTERNAME-$(Get-Date -Format "yyyyMMdd-hhmm").txt"
