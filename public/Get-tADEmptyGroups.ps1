function Get-tADEmptyGroups {
  <#
  .Synopsis
    Get empty groups.

  .DESCRIPTION
    Get empty groups in Active Directory.

  .PARAMETER SearchBase
    Specifies the OU to search under.

  .EXAMPLE
    Get-tADEmptyGroups
    Get empty groups in the current domain.

  .EXAMPLE
    Get-tADEmptyGroups -SearchBase 'OU=Sales,DC=expamle,DC=com'
    Get empty groups in OU Sales.

  .NOTES
    Author: Torsten Demmich
    Mail:   torsten.demmich@gmail.com
  #>
    [CmdletBinding()]
    Param(
      [Parameter(Mandatory=$false)]
      [String]$SearchBase = (Get-ADDomain).DistinguishedName
    )

    begin {
      Write-Verbose -Message ('SearchBase: {0}' -f $SearchBase)
    }

    process {
      $EmptyGroups = Get-ADGroup -Filter { member -notlike '*'} -SearchBase $SearchBase -Properties SamAccountName, member | Select-Object SID, SamAccountName
    }

    end {
      Return $EmptyGroups
    }

}