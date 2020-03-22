function Get-tADLockedAccounts{
  <#
  .Synopsis
    Get locked accounts.

  .DESCRIPTION
    Get locked accounts in Active Directory.

  .PARAMETER SearchBase
    Specifies the OU to search under.

  .EXAMPLE
    Get-tADLockedAccounts
    Get locked accounts in the current domain.

  .EXAMPLE
    Get-tADLockedAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
    Get locked accounts in OU Sales.
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
      $Result = Search-ADAccount -LockedOut -SearchBase $SearchBase | Select-Object SID,Name,objectClass
    }

    end {
      Return $Result
    }

}