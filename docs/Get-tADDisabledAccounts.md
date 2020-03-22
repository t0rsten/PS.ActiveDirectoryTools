# Get-tADDisabledAccounts

## SYNOPSIS
Get disabled accounts.

## SYNTAX

```
Get-tADDisabledAccounts [[-SearchBase] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Get disabled accounts in Active Directory.

## EXAMPLES

### EXAMPLE 1
```
Get-tADDisabledAccounts
```

Get disabled accounts in the current domain.

### EXAMPLE 2
```
Get-tADDisabledAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
```

Get edisabled accounts in OU Sales.

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

## RELATED LINKS
