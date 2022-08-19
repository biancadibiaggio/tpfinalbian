FROM ubuntu:latest 
MAINTAINER Bianca Di Biaggio

COPY . /TP 
WORKDIR /TP  
ENTRYPOINT ./menu.sh 


