cd $PSScriptRoot
clear
$path="d:\"
$directory="Git-External"
$Destination=Join-Path $path $directory
Import-Module .\ProductivityTools.CloneGitRepositories.psm1 -Force

[String[]]$repos=@('git@github.com:tappyy/react-IS4-auth-demo.git',
'git@github.com:fabragaMS/ADPE2E.git')

Clone-GitRepositories -TargetDirectory $Destination -Repositories $repos -Verbose

