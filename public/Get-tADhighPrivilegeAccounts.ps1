function Get-tADhighPrivilegeAccounts{
  <#
  .Synopsis
    Get accounts with high privilege rights.
  
  .DESCRIPTION
    Get user with never expired password in Active Directory.
  
  .PARAMETER SearchBase
    Specifies the OU to search under.
  
  .EXAMPLE
    Get-tADhighPrivilegeAccounts
    Get accounts with high privilege rights.

  #>
    [CmdletBinding()]
    Param()
  
    begin {
      $sidTable = @{'Administrator' = '-500';
        'Guest' = '-501';
        'KRBTGT' = '-502';
        'Domain Admins' = '-512';
        'Domain Users' = '-513';
        'Domain Guests' = '-514';
        'Domain Computers' = '-515';
        'Domain Controllers' = '-516';
        'Cert Publishers' = '-517';
        'Schema Admins' = '-518';
        'Enterprise Admins' = '-519';
        'Group Policy Creator Owners' = '-520';
        'Key Admins' = '-526';
        'Enterprise Key Admins' = '-527';
        'RAS and IAS Servers' = '-553';
        'Enterprise Read-only Domain Controllers' = '-498';
        'Read-only Domain Controllers' = '-521';
        'Allowed RODC Password Replication Group' = '-571';
        'Denied RODC Password Replication Group' = '-572';
        'Cloneable Domain Controllers' = '-522';
      }

      $DomainSID = ((Get-ADDomain).DomainSID).Value

    }
  
    process {
      
    }
  
    end {
      Return $Result
    }
  
  }