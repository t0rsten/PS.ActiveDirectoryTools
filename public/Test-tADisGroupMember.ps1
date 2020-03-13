function Test-tADisGroupMember{
<#
.SYNOPSIS
  Test if AD Object is member of group.

.DESCRIPTION
  Test if AD Object is member of group.

.PARAMETER Identity
  Identity of AD Object.

.PARAMETER Group
  Specify the Group.

.EXAMPLE
  Test-tADisGroupMember User1 Group1
  Test if user1 member of group1

.EXAMPLE
  Test-tADisGroupMember -Indetity Group1 -Group Group2
  Test if group1 member of group2

.NOTES
  Author: Torsten Demmich
  Mail:   torsten.demmich@gmail.com
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$true,Position=0)]
    [string]$Identity,

    [Parameter(Mandatory=$true,Position=1)]
    [string]$Group
  )

  begin {
    Write-Verbose -Message ('Identity: {0}' -f $Identity)
    Write-Verbose -Message ('Group: {0}' -f $Group)
  }

  process {
    $a = Get-ADPrincipalGroupMembership -Identity $Identity | Where-Object {$_.Name -eq $Group}

    if(!$a){
      [bool]$Result = $false
    } else {
      [bool]$Result = $true
    }
  }

  end {
    return $Result
  }

}