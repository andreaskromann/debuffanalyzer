$pathToSolution = "./src/"
$projectName = "AutoML.CodeGenerator.Blazor"
$repoName = "AutoML.CodeGenerator"

Write-Output "----==== Publish $pathToSolution"
dotnet publish $pathToSolution -c Release -o ./dist/
Write-Output ""

Write-Output "----==== Copy from ./dist/$projectName/dist"
Copy-Item -Path "./dist/wwwroot/*" -Destination "./" -Recurse -Force
Write-Output ""

Write-Output "----==== Delete dist folder"
Remove-Item ./dist/ -Recurse
