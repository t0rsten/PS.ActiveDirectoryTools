function Get-tADUsersNeverSetPassword {
<#
.Synopsis
  Get user with never set password

.DESCRIPTION
  Get user with never set password in Active Directory.

.PARAMETER SearchBase
  Specifies the OU to search under.

.EXAMPLE
  Get-tADUserNeverSetPassword
  Get user with never set password in the current domain.

.EXAMPLE
  Get-tADUserNeverSetPassword -SearchBase 'OU=Sales,DC=expamle,DC=com'
  Get user with never set password in OU Sales.
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
    $Result = Get-ADUser -Filter {pwdLastSet -eq 0} | Select-Object SID, SamAccountName
  }

  end {
    Return $Result
  }

}