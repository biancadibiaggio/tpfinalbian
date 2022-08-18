FROM ubuntu:latest 
MAINTAINER Bianca Di Biaggio

COPY . /TP 
WORKDIR /TP 
RUN chmod +x *.sh 
ENTRYPOINT ./menu.sh 


