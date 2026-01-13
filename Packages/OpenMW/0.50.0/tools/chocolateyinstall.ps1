$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.50.0/OpenMW-0.50.0-win64.exe'

  checksum64     = '2c509c84fc8dbf68bdb8c11f6265689b506d26f7297e51a79e40999bab87d7c5'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.50.0'
}

Install-ChocolateyPackage @packageArgs