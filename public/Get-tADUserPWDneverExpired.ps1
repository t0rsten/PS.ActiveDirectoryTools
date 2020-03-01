function Get-tADUserPWDneverExpired{
<#
.Synopsis
  Get user with never expired password.

.DESCRIPTION
  Get user with never expired password in Active Directory.

.PARAMETER SearchBase
  Specifies the OU to search under.

.EXAMPLE
  Get-tADUserPWDneverExpired
  Get user with never expired password in the current domain.

.EXAMPLE
  Get-tADLockedAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
  Get user with never expired password in OU Sales.

.NOTES
  Author: Torsten Demmich
  Mail:   torsten.demmich@gmail.com
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$false)]
    $SearchBase = (Get-ADDomain).DistinguishedName
  )

  begin {
    Write-Verbose -Message ('SearchBase: {0}' -f $SearchBase)
  }

  process {
    $Result = Get-ADUser -Filter {PasswordNeverExpires -eq $true} -SearchBase $SearchBase -Properties PasswordNeverExpires | Select-Object SID,Name
  }

  end {
    Return $Result
  }

}