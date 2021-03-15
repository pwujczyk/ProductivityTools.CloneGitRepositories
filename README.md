<!--Category:PowerShell--> 
 <p align="right">
    <a href="https://www.powershellgallery.com/packages/ProductivityTools.PSDisplayPosition/"><img src="Images/Header/Powershell_border_40px.png" /></a>
    <a href="http://www.productivitytools.tech/display-position/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.PSDisplayPosition"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>

# Clone Git Repositories

Module allows to copy list of repositories to given location. 

<!--more-->
It helps me to store links to all external git repositories which I am interested in, so I can remove them anytime without worrying that I will lose them. 

I created file which contains all repositories and invocation of it.
<!--og-image-->
![Display settings](Images/InitRepositories.png)

And now anytime I can just invoke script to download all resources

![Display settings](Images/Cloning.png)


```PowerShell
[String[]]$repos=@(
'git@github.com:tappyy/react-IS4-auth-demo.git',
'git@github.com:fabragaMS/ADPE2E.git')

Clone-GitRepositories -TargetDirectory "d:\Git-External" -Repositories $repos -Verbose

```


