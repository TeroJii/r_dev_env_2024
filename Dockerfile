FROM rocker/r-ver@sha256:8b25859fbf21a7075bbc2285ebfe06bb8a14dd83e4576df11ff46f14a8620636

RUN apt-get update && apt-get install -y \
    libglpk-dev \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libxt-dev \
    unixodbc-dev \
    wget \
    pandoc

RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('rstudio/renv@v1.0.5')"