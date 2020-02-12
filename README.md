# Getting Started

docker-compose up -d
docker exec -it docker-node_cm_1 powershell
cd C:\inetpub\wwwroot\App_Config\Include\z.Feature.Overrides
Get-Item -Path .\z.SPE.Sync.Enabler.Gulp.config.disabled | Rename-Item -NewName z.SPE.Sync.Enabler.Gulp.config
exit

docker exec -it docker-node_node_1 powershell
cd theme
sxa register http://cm
sxa new DemoTheme1
 - DemoTheme1

cd DemoTheme1
mkdir scripts
npm install; gulp update; gulp install; gulp;

Login to http://localhost:44001/sitecore