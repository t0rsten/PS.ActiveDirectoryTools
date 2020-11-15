function Set-tAdminSDProtectFrequency {
  <#
  .Synopsis
    Sets AdminSDProtectFrequency.

  .DESCRIPTION
    Sets the AdminSDProtectFrequency in the Registry The default frequency is 60 Minutes. 

  .EXAMPLE
    Set-tAdminSDProtectFrequency
  #>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty]
    [int]$Value
  )

    $ErrorActionPreference = 'Stop'
    $RegPath = 'Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NTDS\Parameters\'
    $KeyName = 'AdminSDProtectFrequency'

    try {
      Set-ItemProperty -Path $RegPath -Name $KeyName -Value $Value
    }
    catch {
      
    }
}