$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.45.0/OpenMW-0.45.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.45.0/OpenMW-0.45.0-win64.exe'

  checksum       = '45035b1d94ace4b36f2ba9907d9702debf615b97acbc78a9c550c2d29da74b5a'
  checksumtype   = 'sha256'
  checksum64     = 'a5aec5817973338d621c82e2a4a3f9c900e69ae433c47f5fe6cb621c40dab523'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.45.0'
}

Install-ChocolateyPackage @packageArgs