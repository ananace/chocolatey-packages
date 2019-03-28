$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.44.0/OpenMW-0.44.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.44.0/OpenMW-0.44.0-win64.exe'

  checksum       = '64dd58555fed148294227d686fd927cf5b3201814a30922a5e85515fde6e0aff'
  checksumtype   = 'sha256'
  checksum64     = '35ff64c45334b4a76bdb2c85c041be3a2b7b4de0e75e673378d97847e7374e99'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.44.0'
}

Install-ChocolateyPackage @packageArgs