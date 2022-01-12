$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.47.0/OpenMW-0.47.0-win64.exe'

  checksum64     = '02702977ae32d73aa20e5710a20bc5452d7131dab63bc43d194e339cadaf1e61'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.47.0'
}

Install-ChocolateyPackage @packageArgs