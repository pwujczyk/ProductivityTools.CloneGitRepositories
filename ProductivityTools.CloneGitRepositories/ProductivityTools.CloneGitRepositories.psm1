function CloneRepository($sshurl)
{
	git clone $sshurl
}

function GetRepositories()
{
	[cmdletbinding()]
	param ([string[]]$repositories)

	foreach($repository in $repositories)
	{
		Write-Verbose $repository
		$name=$repository.substring($repository.LastIndexOf('/')+1,$repository.LastIndexOf('.')-$repository.LastIndexOf('/')-1)
		if ($(Test-Path $name) -eq $true)
		{
			Write-Host "Directory $repoName exists. -  Skipping." -ForegroundColor Yellow
		}
		else
		{
			CloneRepository $repository
			Write-Host "Repository $repoName cloned" -ForegroundColor Green
		}
	}

}


function Clone-GitRepositories()
{
	[cmdletbinding()]
	param ([string]$TargetDirectory,[string[]]$Repositories)

	Push-Location

	if ((Test-Path $TargetDirectory) -eq $false)
	{
		New-Item $TargetDirectory -ItemType Directory
	}
	cd $TargetDirectory
	GetRepositories $Repositories

	Pop-Location
}

Export-ModuleMember Clone-GitRepositories