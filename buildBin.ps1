Param([String]$szProjName, [String]$szPlatform)

$szProjDir = "./bin_src/$szProjName"
$szProjBinDir = "$szProjDir/bin"
$szOutputDir = "../../bin/$szPlatform"

Push-Location .
Set-Location $szProjDir
dotnet.exe publish -o $szOutputDir $args
Pop-Location
Remove-Item $szProjBinDir -Force -Recurse
