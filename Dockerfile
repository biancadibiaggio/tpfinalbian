FROM ubuntu:latest
MAINTAINER Bianca Di Biaggio <biancadibiaggio4423@gmail.com>

ADD 1statsWords.sh .
ADD 2statsUsageWords.sh .
ADD 3findNames.sh .
ADD 4statsSentences.sh .
ADD 5blankLinesCounter.sh .
ADD menu.sh .
ADD texto.txt .


EXPOSE 80

ENTRYPOINT ./menu.sh
