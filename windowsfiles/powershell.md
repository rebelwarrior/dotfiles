# PowerShell

Can PowerShell have aliases??
[yes](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias?view=powershell-7.1#:~:text=PowerShell%20includes%20built-in%20aliases,use%20the%20Remove-Alias%20cmdlet)

`Set-Alias -Name np -Value C:\Windows\notepad.exe`

## Deno
`iwr https://deno.land/x/install/install.ps1 -useb | iex`

## How to set up [Chocolately](https://chocolatey.org)?

For Chocolatey clients, you will need the following:

Windows 7+/Windows 2003+ (Server Core also, but not Windows Nano Server)
Windows PowerShell v2+ (not PowerShell Core aka PowerShell 6 yet)
.NET Framework 4.x+

Windows 7+ / Windows Server 2003+
PowerShell v2+ (minimum is v3 for install from this website due to TLS 1.2 requirement)
.NET Framework 4+ (the installation will attempt to install .NET 4.0 if you do not have it installed)(minimum is 4.5 for install from this website due to TLS 1.2 requirement)
