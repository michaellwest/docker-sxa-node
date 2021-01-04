# Getting Started

After cloning the repo you can use the following commands to get your environments setup.

**Note:** The prefix `docker-sxa-node` is due to the fact that the container is running from within a folder with that name.

Run from within the terminal:

```
docker-compose up -d
```

If you need to enable the SPE services to allow for files to be uploaded you can follow these steps:

```
docker exec -it docker-sxa-node_cm_1 powershell
cd C:\inetpub\wwwroot\App_Config\Include\z.Feature.Overrides
Get-Item -Path .\z.SPE.Sync.Enabler.Gulp.config.disabled | Rename-Item -NewName z.SPE.Sync.Enabler.Gulp.config
exit
```

Run from within the terminal:

```
docker exec -it docker-sxa-node_node_1 powershell
```

Run from within the node container:

```
cd theme
sxa register http://cm
sxa new DemoTheme
# Follow the wizard
# ...
cd DemoTheme
mkdir scripts
npm install; gulp update; gulp install; gulp;
```

Login to Sitecore and validate the theme files are syncing to the media library.

http://localhost:44001/sitecore