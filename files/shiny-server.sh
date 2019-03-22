#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

# this takes environment variables supplied by user at run time
# and places them in a .Renviron file so that the shiny app
# can use them to determine file and server locations
echo "APP_SERVER=$APP_SERVER" > /home/shiny/.Renviron
echo "PLUMBER=$PLUMBER" >> /home/shiny/.Renviron
chown 999:999 /home/shiny/.Renviron

Rscript run.R &

if [ "$APPLICATION_LOGS_TO_STDOUT" = "false" ];
then
    exec shiny-server 2>&1
else
    # start shiny server in detached mode
    exec shiny-server 2>&1 &

    # push the "real" application logs to stdout with xtail
    exec xtail /var/log/shiny-server/
fi
