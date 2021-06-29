$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64        = 'https://logic2api.saleae.com/download?os=windows'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'Logic'
  checksum64    = 'BAF26CB89C1D3FE37CF13BFA2EB0FED26D123AEB15B0DE69FE4E1D299FC3C175'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
  silentArgs  = '/exenoui /qn'
}

Install-ChocolateyPackage @packageArgs