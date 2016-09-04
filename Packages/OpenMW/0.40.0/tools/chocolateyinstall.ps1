$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.40.0/OpenMW-0.40.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.40.0/OpenMW-0.40.0-win64.exe'

  checksum       = 'b53b6cf9f5279983e1ce0ec7065fe903b4aabdfcea7ee3585b4514daff2c1a08'
  checksumtype   = 'sha256'
  checksum64     = '45f3a59d1f5072fb8b98475d7f747f5369dfa74fdbbe8caf0d5cee575f97332e'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.40.0'
}

Install-ChocolateyPackage @packageArgs