library(plumber)
pr<-plumber::plumb("/srv/shiny-server/app/teva/scripts/plumber.R")
pr$run(host='0.0.0.0',port=40000)
