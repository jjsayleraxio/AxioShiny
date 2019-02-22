FROM rocker/shiny-verse:3.5.1

LABEL author="Joseph Sayler" email="josephs@axioresearch.com" company="Axio Research" version="1.1.1"

RUN Rscript -e "install.packages(c('ggplot2','Cairo','shiny','DBI','RSQLite','plotly','manhattanly','data.table','hexbin','webshot','shinyBS','htmlwidgets','DT','shinyhelper','dbplyr','shinydashboard','shinyjs','gtools','ggvis','magrittr','plumber'))" && Rscript -e "devtools::install_github('jjsayleraxio/AxioLocusZoom@v0.1.1-alpha')"

COPY ./files/run.R /

COPY ./files/shiny-server.sh /usr/bin/shiny-server.sh

