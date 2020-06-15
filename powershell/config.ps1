wsl --set-default-version 2

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y --ignore-checksums googlechrome vscode microsoft-teams microsoft-windows-terminal discord insomnia-rest-api-client deezer

Remove-Item -path C:\Users\abdie\Desktop\* -recurse
Remove-Item -path C:\Users\Public\Desktop\* -recurse
Reg import .\Taskband.reg
