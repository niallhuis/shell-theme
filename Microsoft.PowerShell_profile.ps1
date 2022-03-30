$AWSRegion = "eu-west-1"

Push-Location (Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

Import-Module AWSPowerShell.NetCore
Initialize-AWSDefaults -ProfileName $$$$$$ -Region $AWSRegion
Import-Module -Name posh-git,oh-my-posh,Terminal-Icons

write-host "Posh Modules Loaded"

cd c:\source

function Set-EnvVar {
  $env:AWS_PROFILE = $StoredAWSCredentials
  $env:oh_my_psversion = ($PSVersionTable.PSVersion.ToString() -split '-')[0]
}

if(!(Test-Path alias:Set-PoshContext)) {
  New-Alias -Name 'Set-PoshContext' -Value 'Set-EnvVar' -Scope Global
}

Set-PoshPrompt -Theme url