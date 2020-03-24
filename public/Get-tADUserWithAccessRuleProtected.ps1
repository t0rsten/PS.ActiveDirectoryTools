function Get-tADUserWithAccessRuleProtected{
  <#
  .Synopsis
    Get user with with protected access rule
  .DESCRIPTION

  .PARAMETER SearchBase
    Specifies the OU to search under.

  .EXAMPLE
    Get-tADUserWithAccessRuleProtected
    Get user with with protected access rule in the current domain.
  
  .EXAMPLE
    Get-tADUserWithAccessRuleProtected -SearchBase 'OU=Sales,DC=expamle,DC=com'
    Get user with with protected access rule in OU Sales.

  .NOTES
  #>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$false)]
    $SearchBase = (Get-ADDomain).DistinguishedName
  )
  
  Write-Verbose -Message ('SearchBase: {0}' -f $SearchBase)

  $Result = Get-ADUser -Filter * -Properties nTSecurityDescriptor | Where-Object { $_.nTSecurityDescriptor.AreAccessRulesProtected -eq $true } | Select-Object SamAccountName, Name

  return $Result

}