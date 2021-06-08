#PowerShell Scripts

```PowerShell

Get-ADUser -Filter * |
            select Name,
            @{E= 'SamAccountName' ; N= 'User ID' },
            @{E = 'Enabled'; N = 'Status'},
            @{E = 'DistinguishedName'; N = 'Distinguished Name'}

```
