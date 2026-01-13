$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.49.0/OpenMW-0.49.0-win64.exe'

  checksum64     = '150f9c0c3f3d8b925eb50ee66750d1108c7f31749f258132cf6a79436f8e6efe'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.49.0'
}

Install-ChocolateyPackage @packageArgs