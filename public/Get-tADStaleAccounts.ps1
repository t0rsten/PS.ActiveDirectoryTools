function Get-tADStaleAccounts{
<#
.Synopsis
  Get stale accounts.

.DESCRIPTION
  Get stale Active Directory accounts.

.PARAMETER SearchBase
  Specifies the OU to search under.

.EXAMPLE
  Get-tADStaleAccounts
  Get stale accounts in the current domain.

.EXAMPLE
  Get-tADStaleAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
  Get stale accounts in OU Sales.

.NOTES
  Author: Torsten Demmich
  Mail:   torsten.demmich@gmail.com
  Version:	1.0.0

  --- ChangeLog ---
  Version 1.0.0
    - Initial Version
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$false)]
    [String]$SearchBase = (Get-ADDomain).DistinguishedName,
    [Parameter(Mandatory=$false)]
    $Days = '30'
  )

  begin {
    Write-Verbose -Message ('SearchBase: {0}' -f $SearchBase)
    Write-Verbose -Message ('Days: {0}' -f $Days)
  }

  process {
    $Result = Search-ADAccount -AccountInactive -TimeSpan $Days -SearchBase $SearchBase | Select-Object SID, Name, objectClass
  }

  end {
    Return $Result
  }

}