---
external help file: PS.ActiveDirectoryTools-help.xml
Module Name: PS.ActiveDirectoryTools
online version:
schema: 2.0.0
---

# Get-tADLockedAccounts

## SYNOPSIS
Get locked accounts.

## SYNTAX

```
Get-tADLockedAccounts [[-SearchBase] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Get locked accounts in Active Directory.

## EXAMPLES

### EXAMPLE 1
```
Get-tADLockedAccounts
```

Get locked accounts in the current domain.

### EXAMPLE 2
```
Get-tADLockedAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
```

Get locked accounts in OU Sales.

## PARAMETERS

### -SearchBase
Specifies the OU to search under.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: (Get-ADDomain).DistinguishedName
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Author: Torsten Demmich
Mail:   torsten.demmich@gmail.com

## RELATED LINKS
