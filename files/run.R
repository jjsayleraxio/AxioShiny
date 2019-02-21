library(plumber)
pr<-plumber::plumb("/srv/shiny-server/app/test/scripts/plumber.R")
pr$run(host='0.0.0.0',port=40000)