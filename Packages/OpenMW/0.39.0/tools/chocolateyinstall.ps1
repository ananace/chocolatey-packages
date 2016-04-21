$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.39.0/OpenMW-0.39.0-win32.exe'
  url64bit      = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.39.0/OpenMW-0.39.0-win64.exe'

  silentArgs    = "/S"
  validExitCodes= @(0)

  registryUninstallerKey = 'OpenMW 0.39.0'
}

Install-ChocolateyPackage @packageArgs