# Test-tADisGroupMember

## SYNOPSIS
Test if AD Object is member of group.

## SYNTAX

```
Test-tADisGroupMember [-Identity] <String> [-Group] <String> [<CommonParameters>]
```

## DESCRIPTION
Test if AD Object is member of group.

## EXAMPLES

### EXAMPLE 1
```
Test-tADisGroupMember User1 Group1
```

Test if user1 member of group1

### EXAMPLE 2
```
Test-tADisGroupMember -Indetity Group1 -Group Group2
```

Test if group1 member of group2

## PARAMETERS

### -Identity
Identity of AD Object.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Group
Specify the Group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
