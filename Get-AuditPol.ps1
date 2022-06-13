Clear
mkdir $env:USERPROFILE\B4SU -ErrorAction SilentlyContinue
$X = Get-Service | Select-Object -property Name,DisplayName,ServiceName,Status,StartType
Add-Content "$env:USERPROFILE\B4SU\$env:COMPUTERNAME-$(Get-Date -Format "yyyyMMdd-hhmm").csv" $X
