FROM rocker/shiny-verse:3.5.0

LABEL author="Joseph Sayler" email="josephs@axioresearch.com" company="Axio Research"

COPY local_packages/AxioSerializer_0.0.0.9000.tar.gz /

RUN Rscript -e "install.packages(c('ggplot2','Cairo','shiny','DBI','RSQLite','plotly','manhattanly','data.table','hexbin','plyr','webshot','shinyBS','htmlwidgets','DT'))"

RUN Rscript -e "install.packages('/AxioSerializer_0.0.0.9000.tar.gz',repos=NULL,type='source')"
