FROM rocker/shiny-verse:3.5.0

LABEL author="Joseph Sayler" email="josephs@axioresearch.com" company="Axio Research"

RUN Rscript -e "install.packages(c('ggplot2','Cairo','shiny','DBI','RSQLite','plotly','manhattanly','data.table','hexbin','plyr','webshot','shinyBS','htmlwidgets'))"

RUN Rscript -e install.packages('local_packagse/AxioSerializer_0.0.0.9000.tar.gz',repos=NULL,type='source')
