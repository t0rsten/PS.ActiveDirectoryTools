# Get-tADStaleAccounts

## SYNOPSIS
Get stale accounts.

## SYNTAX

```
Get-tADStaleAccounts [[-SearchBase] <String>] [[-Days] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Get stale Active Directory accounts.

## EXAMPLES

### EXAMPLE 1
```
Get-tADStaleAccounts
```

Get stale accounts in the current domain.

### EXAMPLE 2
```
Get-tADStaleAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
```

Get stale accounts in OU Sales.

## PARAMETERS

### -SearchBase
Specifies the OU to search under.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: (Get-ADDomain).DistinguishedName
Accept pipeline input: False
Accept wildcard characters: False
```

### -Days
{{ Fill Days Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 30
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
