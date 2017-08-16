#ps1

# disable stupid progress bar
$progressPreference = "silentlyContinue"

Configuration WebServerConfiguration
{
  param ([string[]]$ComputerName = 'localhost')
  
  Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

  Node $ComputerName
  {
    WindowsFeature FileAndStorageServices
    {
      Ensure = "Present"
      Name = "FileAndStorage-Services"
    }

    WindowsFeature StorageServices
    {
      Ensure = "Present"
      Name = "Storage-Services"
    }

    WindowsFeature WebServer
    {
      Ensure = "Present"
      Name = "Web-Server"
    }

    WindowsFeature WebWebServer
    {
      Ensure = "Present"
      Name = "Web-WebServer"
    }

    WindowsFeature WebCommonHttp
    {
      Ensure = "Present"
      Name = "Web-Common-Http"
    }

    WindowsFeature WebDefaultDoc
    {
      Ensure = "Present"
      Name = "Web-Default-Doc"
    }

    WindowsFeature WebDirBrowsing
    {
      Ensure = "Present"
      Name = "Web-Dir-Browsing"
    }

    WindowsFeature WebHttpErrors
    {
      Ensure = "Present"
      Name = "Web-Http-Errors"
    }

    WindowsFeature WebStaticContent
    {
      Ensure = "Present"
      Name = "Web-Static-Content"
    }

    WindowsFeature WebHttpRedirect
    {
      Ensure = "Present"
      Name = "Web-Http-Redirect"
    }

    WindowsFeature WebHealth
    {
      Ensure = "Present"
      Name = "Web-Health"
    }

    WindowsFeature WebHttpLogging
    {
      Ensure = "Present"
      Name = "Web-Http-Logging"
    }

    WindowsFeature WebPerformance
    {
      Ensure = "Present"
      Name = "Web-Performance"
    }

    WindowsFeature WebStatCompression
    {
      Ensure = "Present"
      Name = "Web-Stat-Compression"
    }

    WindowsFeature WebDynCompression
    {
      Ensure = "Present"
      Name = "Web-Dyn-Compression"
    }

    WindowsFeature WebSecurity
    {
      Ensure = "Present"
      Name = "Web-Security"
    }

    WindowsFeature WebFiltering
    {
      Ensure = "Present"
      Name = "Web-Filtering"
    }

    WindowsFeature WebBasicAuth
    {
      Ensure = "Present"
      Name = "Web-Basic-Auth"
    }

    WindowsFeature WebIPSecurity
    {
      Ensure = "Present"
      Name = "Web-IP-Security"
    }

    WindowsFeature WebWindowsAuth
    {
      Ensure = "Present"
      Name = "Web-Windows-Auth"
    }

    WindowsFeature WebAppDev
    {
      Ensure = "Present"
      Name = "Web-App-Dev"
    }

    WindowsFeature WebNetExt
    {
      Ensure = "Present"
      Name = "Web-Net-Ext"
    }

    WindowsFeature WebNetExt45
    {
      Ensure = "Present"
      Name = "Web-Net-Ext45"
    }

    WindowsFeature WebAppInit
    {
      Ensure = "Present"
      Name = "Web-AppInit"
    }

    WindowsFeature WebAspNet
    {
      Ensure = "Present"
      Name = "Web-Asp-Net"
    }

    WindowsFeature WebAspNet45
    {
      Ensure = "Present"
      Name = "Web-Asp-Net45"
    }

    WindowsFeature WebISAPIExt
    {
      Ensure = "Present"
      Name = "Web-ISAPI-Ext"
    }

    WindowsFeature WebISAPIFilter
    {
      Ensure = "Present"
      Name = "Web-ISAPI-Filter"
    }

    WindowsFeature WebWebSockets
    {
      Ensure = "Present"
      Name = "Web-WebSockets"
    }

    WindowsFeature WebMgmtTools
    {
      Ensure = "Present"
      Name = "Web-Mgmt-Tools"
    }

    WindowsFeature WebMgmtConsole
    {
      Ensure = "Present"
      Name = "Web-Mgmt-Console"
    }

    WindowsFeature NETFrameworkFeatures
    {
      Ensure = "Present"
      Name = "NET-Framework-Features"
    }

    WindowsFeature NETFrameworkCore
    {
      Ensure = "Present"
      Name = "NET-Framework-Core"
    }

    WindowsFeature NETHTTPActivation
    {
      Ensure = "Present"
      Name = "NET-HTTP-Activation"
    }

    WindowsFeature NETFramework45Features
    {
      Ensure = "Present"
      Name = "NET-Framework-45-Features"
    }

    WindowsFeature NETFramework45Core
    {
      Ensure = "Present"
      Name = "NET-Framework-45-Core"
    }

    WindowsFeature NETFramework45ASPNET
    {
      Ensure = "Present"
      Name = "NET-Framework-45-ASPNET"
    }

    WindowsFeature NETWCFServices45
    {
      Ensure = "Present"
      Name = "NET-WCF-Services45"
    }

    WindowsFeature NETWCFTCPPortSharing45
    {
      Ensure = "Present"
      Name = "NET-WCF-TCP-PortSharing45"
    }

    WindowsFeature FSSMB1
    {
      Ensure = "Present"
      Name = "FS-SMB1"
    }

    WindowsFeature UserInterfacesInfra
    {
      Ensure = "Present"
      Name = "User-Interfaces-Infra"
    }

    WindowsFeature ServerGuiMgmtInfra
    {
      Ensure = "Present"
      Name = "Server-Gui-Mgmt-Infra"
    }

    WindowsFeature ServerGuiShell
    {
      Ensure = "Present"
      Name = "Server-Gui-Shell"
    }

    WindowsFeature PowerShellRoot
    {
      Ensure = "Present"
      Name = "PowerShellRoot"
    }
    
    WindowsFeature PowerShell
    {
      Ensure = "Present"
      Name = "PowerShell"
    }

    WindowsFeature PowerShellV2
    {
      Ensure = "Present"
      Name = "PowerShell-V2"
    }

    WindowsFeature PowerShellISE
    {
      Ensure = "Present"
      Name = "PowerShell-ISE"
    }

    WindowsFeature WAS
    {
      Ensure = "Present"
      Name = "WAS"
    }

    WindowsFeature WASProcessModel
    {
      Ensure = "Present"
      Name = "WAS-Process-Model"
    }

    WindowsFeature WASNETEnvironment
    {
      Ensure = "Present"
      Name = "WAS-NET-Environment"
    }

    WindowsFeature WASConfigAPIs
    {
      Ensure = "Present"
      Name = "WAS-Config-APIs"
    }

    WindowsFeature WoW64Support
    {
      Ensure = "Present"
      Name = "WoW64-Support"
    }
  }
}

function Install-Proxy {
  Param
  (
    [Parameter(Mandatory=$true, Position=0)]
    [string] $Proxy,
    [Parameter(Mandatory=$true, Position=1)]
    [string] $Override
  )

  New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS
  $Users = Get-WmiObject Win32_UserProfile -Filter 'Special=False' | Select-Object SID 
  for( $i=0; $i -lt $Users.Length; $i++ ) {
    $TestPath = "HKU:\" + $Users[$i].SID
    if (Test-Path $TestPath ) {
      $RegPath = "HKU:\" + $Users[$i].SID + "\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
      
      Set-ItemProperty -Path $RegPath -Name ProxyServer -Value $Proxy
      Set-ItemProperty -Path $RegPath -Name ProxyEnable -Value 1
      Set-ItemProperty -Path $RegPath -Name ProxyOverride -Value $Override

      NETSH WINHTTP SET PROXY proxy-server="http=$($Proxy);https=$($Proxy)" bypass-list=$($Override)
    }
  }
}

function Set-WinRmProperty {
  Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0
  Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
  Enable-PSRemoting -SkipNetworkProfileCheck -Force
  Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value '*' -Force
  invoke-command -scriptblock {cmd /C 'winrm qc -force'}
  invoke-command -scriptblock {cmd /C 'winrm set winrm/config/service/Auth @{Basic="true"}'}
  invoke-command -scriptblock {cmd /C 'winrm set winrm/config/service @{AllowUnencrypted="true"}'}
  invoke-command -scriptblock {cmd /C 'winrm set winrm/config/winrs @{MaxMemoryPerShellMB="1024"}'}
  invoke-command -scriptblock {cmd /C 'winrm set winrm/config @{MaxTimeoutms="1800000"}'}
}

function Install-UserAccount {
  Param
  (
    [Parameter(Mandatory=$true, Position=0)]
    [string] $UserName,
    [Parameter(Mandatory=$true, Position=1)]
    [string] $Password
  )
  
  try {
    $Computer = [ADSI]"WinNT://$Env:COMPUTERNAME,Computer"
    $ADPath = "WinNT://$Env:COMPUTERNAME/" + $UserName
    $LocalAdmin = $Computer.Create("User", $UserName)
    $LocalAdmin.SetPassword($Password)
    $LocalAdmin.SetInfo()
    $LocalAdmin.FullName = $UserName
    $LocalAdmin.SetInfo()
    $LocalAdmin.UserFlags = 64 + 65536 
    $LocalAdmin.SetInfo()
    ([ADSI]"WinNT://$env:computername/Administrators,group").psbase.Invoke("Add",([ADSI]$ADPath).path)

    $DomainUser = ".\$($UserName)"
    $SecurePassword = ConvertTo-SecureString -AsPlainText -Force -String $Password
    $Credential = New-Object -typename System.Management.Automation.PSCredential -argumentlist $DomainUser,$SecurePassword
    $Session = New-PSSession -computername localhost -credential $Credential
    Enter-PSSession $Session
    Exit-PSSession $Session
  } catch {
    write-host -fore red $_.Exception.Message
  }
}

function Set-FirewallOff {
  NETSH AdvFirewall SET AllProfiles STATE OFF 
  Stop-Service MpsSvc ; Set-Service MpsSvc -StartupType Manual
}

function Set-AcceptIeRecommendation {
  if (-Not (Test-Path 'HKLM:\Software\Policies\Microsoft\Internet Explorer')) {
    New-Item -Path 'HKLM:\Software\Policies\Microsoft' -Name 'Internet Explorer'
  } 

  if (-Not (Test-Path 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main')) {
    New-Item -Path 'HKLM:\Software\Policies\Microsoft\Internet Explorer' -Name 'Main'
  } 
  
  Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Internet Explorer\Main" -Name "DisableFirstRunCustomize" -Value 1
}

Add-Type -AssemblyName System.IO.Compression.FileSystem

function Delete-FolderAndContents {
    Param(
        [Parameter(Mandatory=$true, Position=1)] [string] $folder_path
    )

    Process {
        $child_items = ([array] (Get-ChildItem -Path $folder_path -Recurse -Force))
        if ($child_items) {
            $null = $child_items | Remove-Item -Force -Recurse
        }
        $null = Remove-Item $folder_path -Force
    }
}

  
# Setup variables
$UserName = 'automate'
$Password = 'T@RFU999'

# First-boot Process
Set-WinRmProperty
Set-AcceptIeRecommendation
Install-UserAccount -UserName $UserName -Password $Password
Set-FirewallOff

# DSC Configure & Execute
Install-AutomateFolder
Get-InstallationFiles
Add-WindowsFeature Dsc-Service

#WebServerConfiguration -ComputerName localhost -OutputPath d:\MOF
#Start-DscConfiguration d:\MOF -Wait
