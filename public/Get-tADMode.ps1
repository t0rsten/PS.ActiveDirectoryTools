function Get-tADMode{
  <#
  .Synopsis
    Get current AD Mode.

  .DESCRIPTION
    Get current Active Directory Forest and Domain Mode.

  .EXAMPLE
    Get-Get-tADMode
    Get current AD Mode.

  .NOTES
    Author: Torsten Demmich
    Mail:   torsten.demmich@gmail.com
    Version:	1.0.0

    --- ChangeLog ---
    Version 1.0.0
      - Initial Version
  #>
    [CmdletBinding()]
    Param()

    $ForestMode = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest().ForestMode
    $DomainMode = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().DomainMode


    $ADMode = New-Object PSObject -Property @{
      ForestMode = $ForestMode;
      DomainMode = $DomainMode
    }

    Return $ADMode
}