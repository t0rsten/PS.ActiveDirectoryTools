# Test-tADDomainControllerPorts

## SYNOPSIS
Test port requirements for establishing DC communication.

## SYNTAX

```
Test-tADDomainControllerPorts [-ComputerName] <String> [<CommonParameters>]
```

## DESCRIPTION
The CmdLet display diagnostig information about the port requirements for establishing DC to DC communication.

## EXAMPLES

### EXAMPLE 1
```
Test-tADDomainControllerPorts -ComputerName Server01
```

### EXAMPLE 2
```
Test-tADDomainControllerPorts -ComputerName 'Server1','Server2'
```

## PARAMETERS

### -ComputerName
Specifies a computer name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
