FROM ubuntu:16.04

RUN apt-get update -q
RUN mkdir /cartellaprova
RUN echo "prova" >> /cartellaprova/prova.txt
CMD ["(time dd bs=1M count=1024 if=/dev/zero of=/simple-container-benchmarks-writetest conv=fdatasync) 2> /cartellaprova/prova.txt"]
