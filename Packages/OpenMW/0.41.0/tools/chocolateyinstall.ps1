$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.41.0/OpenMW-0.41.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.41.0/OpenMW-0.41.0-win64.exe'

  checksum       = '6089c390627e7630773e3c5c1a3bf89eef358432274b8bf773cd6419f30682b5'
  checksumtype   = 'sha256'
  checksum64     = '2dd422dc7fddaf099447d57b82501bab5816f44cc10b1beef7e24ef9916ed5f7'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.41.0'
}

Install-ChocolateyPackage @packageArgs