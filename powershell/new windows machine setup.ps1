#install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#extend services startup
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "ServicesPipeTimeout" -value "60000" -PropertyType DWORD -FORCE


#firewall exceptions
netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80
netsh advfirewall firewall add rule name="Open Port 8080" dir=in action=allow protocol=TCP localport=8080

#enable linux subsystem
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux