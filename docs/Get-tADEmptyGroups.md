# Get-tADEmptyGroups

## SYNOPSIS
Get empty groups.

## SYNTAX

```
Get-tADEmptyGroups [[-SearchBase] <String>] [<CommonParameters>]
```

## DESCRIPTION
Get empty groups in Active Directory.

## EXAMPLES

### EXAMPLE 1
```
Get-tADEmptyGroups
```

Get empty groups in the current domain.

### EXAMPLE 2
```
Get-tADEmptyGroups -SearchBase 'OU=Sales,DC=expamle,DC=com'
```

Get empty groups in OU Sales.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
