function Get-tADwellKnowObjects{
<#
.SYNOPSIS
  Get Active Directory well known objects by well known SID.

.DESCRIPTION
  Get Active Directory well known objects like Domain Admins by SID.

.PARAMETER

.EXAMPLE
  Get-tADwellKnowObjects

.NOTES
  Author: Torsten Demmich
  Mail:   torsten.demmich@gmail.com
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$false,Position=0)]
    [string]$ComputerName
  )

  $sidTable = @{'Administrator' = '-500';
    'Guest' = '-501';
    'KRBTGT' = '-502';
    'Domain Admins' = '-512';
    'Domain Users' = '-513';
    'Domain Guests' = '-514';
    'Domain Computers' = '-515';
    'Domain Controllers' = '-516';
    'Cert Publishers' = '-517';
    'Schema Admins' = '-518';
    'Enterprise Admins' = '-519';
    'Group Policy Creator Owners' = '-520';
    'Key Admins' = '-526';
    'Enterprise Key Admins' = '-527';
    'RAS and IAS Servers' = '-553';
    'Enterprise Read-only Domain Controllers' = '-498';
    'Read-only Domain Controllers' = '-521';
    'Allowed RODC Password Replication Group' = '-571';
    'Denied RODC Password Replication Group' = '-572';
    'Cloneable Domain Controllers' = '-522';
  }

    # Get-ADObject -Filter { objectSid -eq 'S-1-5-21-3056380229-4157989709-2468344688-501' }
    $DomainSID = ((Get-ADDomain).DomainSID).Value
    $Result = @()

    Write-Verbose ('DomainSID: {0}' -f $DomainSID)

    foreach ($sid in $sidTable.GetEnumerator()){
      [string]$wkSID = $DomainSID+$sid.Value
      [string]$wkSIDName = $sid.Key

      Write-Verbose ('{0} {1}' -f $wkSIDName, $wkSID)

      $ADObject = Get-ADObject -Filter { objectSID -eq $wkSID} -Properties Name, ObjectClass, objectSID | Select-Object Name, ObjectClass, objectSID

      $psObj = New-Object psobject
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'wellKnownName' -Value $wkSIDName
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'wellKnownSID' -Value $sid.Value
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'Name' -Value $ADObject.Name
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'ObjectClass' -Value $ADObject.ObjectClass
      Add-Member -InputObject $psObj -MemberType NoteProperty -Name 'SID' -Value $ADObject.objectSID

      $Result += $psObj
    }

  Return $Result

}