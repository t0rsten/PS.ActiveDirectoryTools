function Get-tADFSMOHolders{
  <#
  .Synopsis
    Get FSMO Holders.

  .DESCRIPTION
    Get FSMO holders in forest and current domain.

  .EXAMPLE
    Get-tADFSMOHolders
    Get FSMO holders.
  #>
    [CmdletBinding()]
    Param()

    $Domain = Get-ADDomain
    $Forest = Get-ADForest

    $FSMOHolders = New-Object PSObject -Property @{
      DomainNaming = $Forest.DomainNamingMaster
      Schema = $Forest.SchemaMaster
      Infrastructure = $Domain.InfrastructureMaster
      PDC = $Domain.PDCEmulator
      RID = $Domain.RIDMaster
    }

    Return $FSMOHolders
  }