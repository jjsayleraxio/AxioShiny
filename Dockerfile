FROM rocker/shiny-verse:3.5.0

LABEL author="Joseph Sayler" email="josephs@axioresearch.com" company="Axio Research" version="1.0.0"

RUN Rscript -e "install.packages(c('ggplot2','Cairo','shiny','DBI','RSQLite','plotly','manhattanly','data.table','hexbin','plyr','webshot','shinyBS','htmlwidgets','DT','devtools'))" && Rscript -e "devtools::install_github('jjsayleraxio/AxioLocusZoom@v0.1.0-alpha')"

