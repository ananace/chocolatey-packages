$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.43.0/OpenMW-0.43.0-win32.exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.43.0/OpenMW-0.43.0-win64.exe'

  checksum       = '2e807fbded5f1ca766afa0eea00d9ff1cf2f102d888e47636872dd859882bf0d'
  checksumtype   = 'sha256'
  checksum64     = '7d3648ccc536ed91759d09bbe37aa9f660988bb251ba8e9d39a6ccda6cb87a94'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.43.0'
}

Install-ChocolateyPackage @packageArgs