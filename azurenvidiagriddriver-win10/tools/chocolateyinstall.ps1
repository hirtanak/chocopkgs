$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://go.microsoft.com/fwlink/?linkid=874181'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  
  softwareName  = 'azurenvidiagriddriver-win10*'
  checksum      = '24B9C53932BC86F98657385EEF2483379C4FDB31F1C15D6DA32D027055C64FB7'
  checksumType  = 'sha256' 

  # MSI
  silentArgs    = "/s /n" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs 