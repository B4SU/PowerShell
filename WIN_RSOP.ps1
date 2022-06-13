Clear
mkdir $env:USERPROFILE\B4SU -ErrorAction SilentlyContinue
$X = gpresult /z
Add-Content "$env:USERPROFILE\B4SU\$env:COMPUTERNAME-$(Get-Date -Format "yyyyMMdd-hhmm").csv" $X
