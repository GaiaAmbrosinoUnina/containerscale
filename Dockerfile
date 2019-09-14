FROM ubuntu:16.04

RUN apt-get update -q
#COPY /tmp .
#ENV LOG_FILE /tmp/prova.txt
#RUN mkdir /cartellaprova
#RUN echo "prova" > /tmp/prova.txt
RUN apt-get install time -y
RUN   echo "Some line to add to a file" >> /tmp/sysctl.conf
CMD ["/bin/bash"]
