<img align="right" src="https://raw.githubusercontent.com/jjsayleraxio/AxioShiny/master/images/axio-logo.png">
<br><br>

# AxioShiny 

Shiny server built using rocker/shiny-verse and utilizing custom code written at [Axio Research](https://www.axioresearch.com/our-services/3-statistical-genetics-services/).

### How To Use

First, pull image from Docker Hub. In a target directory, create ```./app``` and ```./logs``` folders. Then, run this command to start the container

```
docker run -dit --name=[CONTAINER NAME] -p [HOST PORT]:3838 -v [PATH TO FOLDER]/app/:/srv/shiny-server/app/ -v [PATH TO FOLDER]/logs/:/var/log/shiny-server/ jjsaxio/AxioShiny:latest
```

The host port can be the same as the container's port.

Put your shiny app in the ```app``` folder.

Go to ```localhost:[HOST PORT]``` to access the shiny app server.
