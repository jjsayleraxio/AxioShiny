library(plumber)
pr<-plumber::plumb(paste0("/srv/shiny-server/app/",Sys.getenv("PLUMBER"))
pr$run(host='0.0.0.0',port=40000)
