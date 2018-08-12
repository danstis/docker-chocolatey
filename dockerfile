FROM microsoft/windowsservercore:1803
ENV chocolateyUseWindowsCompression false
RUN PowerShell -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force; \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); \
    choco feature disable --name showDownloadProgress