$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.46.0/OpenMW-0.46.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.46.0/OpenMW-0.46.0-win64.exe'

  checksum       = '8d6e38665de5c7ece6b9a1d0f5608148f69232082c5bc6dc59d7a4ed1a10dd51'
  checksumtype   = 'sha256'
  checksum64     = 'd9b4cb5d4e32dc6186ea8a2a8b2620f9c104d753540d82682f69a56f591035d7'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.46.0'
}

Install-ChocolateyPackage @packageArgs