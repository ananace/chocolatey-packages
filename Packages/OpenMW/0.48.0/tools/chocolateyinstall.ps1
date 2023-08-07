$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.48.0/OpenMW-0.48.0-win64.exe'

  checksum64     = 'bc2522e48a1bae8fe9ed24994827f09dc95f74d3e6dfe4236cac07c9cdd3580f'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.48.0'
}

Install-ChocolateyPackage @packageArgs