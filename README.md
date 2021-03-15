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

# Cline Git Repositories

Module allows to copy list of repositories to given location. 

<!--more-->
It helps me to store links to all external git repositories which I am interested in, so I can remove them anytime without worrying that I will lose them. 

<!--og-image-->
![Display settings](Images/DisplayConfiguration.png) 

Main cmdlet doesn't return any information it just move screen to the chosen side.

```PowerShell
Move-ExternalDisplayToRight -Verbose
```

![Moving display](Images/MovingDisplay.png) 

Getting details of the display returns information about all connected devices.

```PowerShell
Get-DisplayDetails -Verbose
```

![Display details](Images/DisplayDetails.png) 


