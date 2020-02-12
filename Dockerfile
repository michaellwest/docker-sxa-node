# escape=`
FROM mcr.microsoft.com/windows/servercore:1909

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN New-Item -Path 'C:\\downloads' -ItemType 'Directory' -Force | Out-Null; `
    & curl.exe -sS -L -o c:\\downloads\\node.msi https://nodejs.org/download/release/v11.15.0/node-v11.15.0-x64.msi;
    
RUN & msiexec /qn /l* c:\\downloads\\node-log.txt /i c:\\downloads\\node.msi

RUN Remove-Item -Path 'c:\\downloads\\node.msi'

RUN & npm install -g gulp-cli; `
    & npm install -g gulp; `
    npm install -g npm-check-updates;

RUN & npm config set `@sxa:registry https://sitecore.myget.org/F/sc-npm-packages/npm; `
    & npm i -g `@sxa/CLI;

