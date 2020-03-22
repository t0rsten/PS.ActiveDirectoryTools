# Get-tADUsersPWDneverExpired

## SYNOPSIS
Get user with never expired password.

## SYNTAX

```
Get-tADUsersPWDneverExpired [[-SearchBase] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Get user with never expired password in Active Directory.

## EXAMPLES

### EXAMPLE 1
```
Get-tADUserPWDneverExpired
```

Get user with never expired password in the current domain.

### EXAMPLE 2
```
Get-tADLockedAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
```

Get user with never expired password in OU Sales.

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
