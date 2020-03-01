function Test-tADDomainControllerPorts{
<#
.SYNOPSIS
  Test port requirements for establishing DC communication.

.DESCRIPTION
  The CmdLet display diagnostig information about the port requirements for establishing DC to DC communication.

.PARAMETER ComputerName
  Specifies a computer name.

.EXAMPLE
  Test-tADDomainControllerPorts -ComputerName Server01

.EXAMPLE
  Test-tADDomainControllerPorts -ComputerName 'Server1','Server2'

.NOTES
  Author:   Torsten Demmich
  Mail:   torsten.demmich@gmail.com
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$true,Position=0,ValueFromPipeline=$true)]
    [string]$ComputerName
  )

  begin {

    $portTable = @{'LDAP' = 389;
      'LDAP SSL' = 636;
      'LDAP GC' = 3268;
      'LDAP GC SSL' = 3269;
      'Kerberos' = 88;
      'DNS' = 53;
      'SMB' = 445;
      'SMTP' = 25;
      'RPC' = 135;
      'DFSR' = 5722;
      'Kerberos change' = 464;
      'SOAP' = 9389;
      'DFSN' = 139
    }

    $Result = @()

  }

  Process {
    
    foreach ($port in $portTable.GetEnumerator()){
      [string]$portType = $port.key
      [int]$portValue = $port.value

      $TcpTest = Test-NetConnection -ComputerName $ComputerName -Port $portValue -InformationLevel Quiet

      $psObj = New-Object psobject
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'ComputerName' -Value $ComputerName
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'Type' -Value $portType
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'Port' -Value $portValue
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'TCPTestResult' -Value $TcpTest

      $Result += $psObj
    }

  }

  end {
    Return $Result
  }

}