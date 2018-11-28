FROM rocker/shiny-verse:3.5.0

LABEL author="Joseph Sayler" email="josephs@axioresearch.com" company="Axio Research"

RUN Rscript -e "install.packages(c('ggplot2','Cairo','shiny','DBI','RSQLite','plotly','manhattanly','data.table','hexbin','plyr','webshot','shinyBS','htmlwidgets','DT','devtools'))"

