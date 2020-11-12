function Get-tAdminSDProtectFrequency {
  <#
  .Synopsis
    Gets AdminSDProtectFrequency.

  .DESCRIPTION
    Gets the AdminSDProtectFrequency from the Registry. The default frequency is 60 Minutes. 

  .EXAMPLE
    Get-tAdminSDProtectFrequency
    Gets AdminSDProtectFrequency.
  #>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory=$false)]
    [String]$SearchBase = (Get-ADDomain).DistinguishedName
  )

  $ErrorActionPreference = 'Stop'
  $RegPath = 'Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NTDS\Parameters\'
  $KeyName = 'AdminSDProtectFrequency'


  if(Test-Path -Path $RegPath){
      try
      {
          (Get-ItemProperty -Path $RegPath -Name $KeyName).AdminSDProtectFrequency
      }
      catch
      {
          Write-Output 'Default (Parameter not set)'
      }
  } else {
      Write-Output  ('Path {0} not found.' -f $RegPath)
  }

}