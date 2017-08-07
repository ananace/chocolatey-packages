$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.42.0/OpenMW-0.42.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.42.0/OpenMW-0.42.0-win64.exe'

  checksum       = '82f78629630e4348f852eee103c22fd31897f03f5e081db279954751fb46de8d'
  checksumtype   = 'sha256'
  checksum64     = 'f380e8655f08b61b63e20ad344031798449d90f44c9646d51a054353bcdb4efc'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.42.0'
}

Install-ChocolateyPackage @packageArgs