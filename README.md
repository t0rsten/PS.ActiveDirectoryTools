<p align="center">
<a href="https://github.com/t0rsten/PS.ActiveDirectoryTools"><img alt="GitHub top language" src="https://img.shields.io/github/languages/top/t0rsten/PS.ActiveDirectoryTools"></a>
<a href="https://www.powershellgallery.com/packages/PS.ActiveDirectoryTools/"><img alt="PowerShell Gallery" src="https://img.shields.io/powershellgallery/v/PS.ActiveDirectoryTools"></a>
<a href="https://github.com/t0rsten/PS.ActiveDirectoryTools/blob/master/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/t0rsten/PS.ActiveDirectoryTools"></a><br>
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/t0rsten/PS.ActiveDirectoryTools">
<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/t0rsten/PS.ActiveDirectoryTools">

<img alt="PowerShell Gallery" src="https://img.shields.io/powershellgallery/p/PS.ActiveDirectoryTools?color=blue">
</p>


# PS.ActiveDirectoryTools
A set of commands and tools for ActiveDirectory.

### Table of Contents
**[Functions](#functions)**<br>
**[Installation](#installation)**<br>
**[Examples of usage](#examples-of-usage)**<br>
**[Documentation](#documentation)**<br>
**[Changelog](#changelog)**<br>

## Functions

| Name                                                                   | Description                                               |
| ---------------------------------------------------------------------- | --------------------------------------------------------- |
| [Get-tADDisabledAccounts](docs/Get-tADDisabledAccounts.md)             | Get disabled accounts                                     |
| [Get-tADEmptyGroups](docs/Get-tADEmptyGroups.md)                       | Get empty groups                                          |
| [Get-tADFSMOHolders](docs/Get-tADFSMOHolders.md)                       | Get FSMO Holders                                          |
| [Get-tADLockedAccounts](docs/Get-tADLockedAccounts.md)                 | Get locked accounts                                       |
| [Get-tADMode](docs/Get-tADMode.md)                                     | Get current AD Mode                                       |
| [Get-tADStaleAccounts](docs/Get-tADStaleAccounts.md)                   | Get stale accounts                                        |
| [Get-tADUsersPWDneverExpired](docs/Get-tADUsersPWDneverExpired.md)     | Get user with never expired password                      |
| [Get-tADwellKnownObjects](docs/Get-tADwellKnownObjects.md)             | Get Active Directory well known objects by well known SID |
| [Test-tADDomainControllerPorts](docs/Test-tADDomainControllerPorts.md) | Test port requirements for establishing DC communication  |
| [Get-tADUsersNeverSetPassword](docs/Get-tADUsersNeverSetPassword.md)   | Get user with never expired password                      |
| [Test-tADisGroupMember](docs/Test-tADDomainControllerPorts.md)         | Test if AD Object is member of group                      |


## Installation
```Powershell
Install-Module -Name PS.ActiveDirectoryTools
```

## Examples of usage

## Documentation

## Changelog
#### Version 0.2.0
  - Added function ```Test-tADisGroupMember```
  - Added function ```Test-tADDomainControllerPorts```
  - Added function ```Get-tADUsersNeverSetPassword```
  - Updated comment based help in functions
  - Updated Markdown helpfiles in ```./docs```
  - Added ExternalModuleDependencies in Module manifest

#### Version 0.1.1
  - Added Markdown helpfiles in ```./docs```

#### Version 0.1.0
  - Added function ```Get-tADDisabledAccounts```
  - Added function ```Get-tADEmptyGroups```
  - Added function ```Get-tADFSMOHolders```
  - Added function ```Get-tADLockedAccounts```
  - Added function ```Get-tADMode```
  - Added function ```Get-tADStaleAccounts```
  - Added funktion ```Get-tADUserPWneverExpired```
  - Added function ```Get-tADwellKnownObjects```