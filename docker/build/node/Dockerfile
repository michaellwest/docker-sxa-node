# escape=`

ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG NODE_VERSION

USER ContainerAdministrator

WORKDIR C:\downloads
RUN curl.exe -sS -L -o node.zip https://nodejs.org/dist/v%NODE_VERSION%/node-v%NODE_VERSION%-win-x64.zip
    
RUN tar.exe -xf node.zip -C C:\
RUN move C:\node-v%NODE_VERSION%-win-x64 c:\node
RUN del node.zip

RUN SETX /M PATH "%PATH%;C:\node"

USER ContainerUser

RUN npm install -g npm@latest && npm install -g gulp-cli && npm install -g gulp && npm install -g npm-check-updates

RUN npm config set @sxa:registry https://sitecore.myget.org/F/sc-npm-packages/npm && npm i -g @sxa/CLI

WORKDIR C:\theme

CMD [ "node.exe" ]