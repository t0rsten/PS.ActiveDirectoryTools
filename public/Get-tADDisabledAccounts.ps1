function Get-tADDisabledAccounts{
  <#
  .Synopsis
    Get disabled accounts.

  .DESCRIPTION
    Get disabled accounts in Active Directory.

  .PARAMETER SearchBase
    Specifies the OU to search under.

  .EXAMPLE
    Get-tADDisabledAccounts
    Get disabled accounts in the current domain.

  .EXAMPLE
    Get-tADDisabledAccounts -SearchBase 'OU=Sales,DC=expamle,DC=com'
    Get edisabled accounts in OU Sales.
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
      $Result = Search-ADAccount -AccountDisabled -SearchBase $SearchBase | Select-Object SID,Name,objectClass
    }

    end {
      Return $Result
    }

}