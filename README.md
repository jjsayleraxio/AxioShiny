<img align="right" src="https://raw.githubusercontent.com/jjsayleraxio/AxioShiny/master/images/axio-logo.png">

# AxioShiny 

![GitHub release (latest by date)](https://img.shields.io/github/v/release/jjsayleraxio/AxioShiny?logo=github&style=flat)
[![GitHub issues](https://img.shields.io/github/issues/jjsayleraxio/AxioShiny?logo=github&style=flat)](https://github.com/jjsayleraxio/AxioShiny/issues)
![Docker Build Status](https://img.shields.io/docker/build/jjsaxio/axioshiny?logo=docker&style=flat)

Shiny server built using rocker/shiny-verse and utilizing custom code written at [Axio Research](https://www.axioresearch.com/our-services/3-statistical-genetics-services/).

### How To Use

First, pull image from Docker Hub. In a target directory, create ```./app``` and ```./logs``` folders. Then, run this command to start the container

```
docker run -dit --name=[CONTAINER NAME] -p [HOST PORT]:3838 -v [PATH TO FOLDER]/:/srv/shiny-server/ -v [PATH TO FOLDER]/:/var/log/shiny-server/ jjsaxio/axioshiny:latest
```

The host port can be the same as the container's port.

Put your shiny app in the ```app``` folder.

Go to ```localhost:[HOST PORT]``` to access the shiny app server.

#### NEW - Plumber API Functionality

[Plumber](https://www.rplumber.io/) APIs are now available to use with the Shiny server! This provides some optional ```docker run``` parameters. Still use the above command if you are not using Plumber, otherwise use the following to start a Plumber API:

```
docker run -dit --name=[CONTAINER NAME] -p [HOST PORT]:3838 -p 40000:40000 -v [PATH TO FOLDER]/:/srv/shiny-server/ -v [PATH TO FOLDER]/:/var/log/shiny-server/ -e "APP_SERVER=[SERVER NAME]" -e "PLUMBER=[PLUMBER FILE LOCATION]" jjsaxio/axioshiny:devel
```

__Explanation of new parameters:__

* Port ```40000``` is used by Plumber to access the API; without this, all calls to your API will be blocked.
* 2 environment variables have been added:
  * ```APP_SERVER``` is the name of your public facing server. It can be localhost, a domain name, an IP address, http or https. The name must be entered in this format: ```http[s]://[server name or IP]```
  * ```PLUMBER``` is the location of the plumber.R script relative to the ```/srv/shiny-server/``` directory. The plumber.R script is where your API code is located. The name of the file can be anything and the file can be placed anywhere, as long as the path is entered without the leading ```/```

For more information about how to use APIs in R, see the [Plumber documentation](https://www.rplumber.io/docs/).
