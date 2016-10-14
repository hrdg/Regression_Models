# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image

FROM rocker/rstudio

MAINTAINER hrdg7

#RUN apt-get update && apt-get install -y libcurl4-openssl-dev libxml2-dev

RUN  cd /tmp && Rscript -e "install.packages('swirl');library(swirl);install_course_github('hrdg7', 'Regression_Models', 'course')"
#RUN cd /tmp && R CMD INSTALL DSC2015R && Rscript -e "library(DSC2015R);install_course()"