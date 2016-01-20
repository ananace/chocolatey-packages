$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = 'https://downloads.openmw.org/windows/OpenMW-0.37.0-win32.exe'
  url64bit      = 'https://downloads.openmw.org/windows/OpenMW-0.37.0-win64.exe'

  silentArgs    = "/S"
  validExitCodes= @(0)

  registryUninstallerKey = 'OpenMW 0.37.0'
}

Install-ChocolateyPackage @packageArgs