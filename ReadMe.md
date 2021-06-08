

## PowerShell Scripts


#### Prerequisite to manage AD through PowerShell
```PowerShell

Install-WindowsFeature RSAT-AD-PowerShell
Import-Module ActiveDirectory
```


#### Get-ADUser - Reteives AD User account details.

```PowerShell

Get-ADUser -Filter * -Properties * |
            select Name,
            @{E= 'SamAccountName' ; N= 'User ID' },
            @{E = {if($_.Enabled -eq "True") {return 'Enabled'} else {return 'Disabled'} }; N = 'Status'},
            @{E = 'DistinguishedName'; N = 'Distinguished Name'},
            @{E = 'PasswordNeverExpires'; N = 'Password Nerver Expire'},
            @{E = 'PasswordLastSet'; N = 'Password Last Set'}

```
