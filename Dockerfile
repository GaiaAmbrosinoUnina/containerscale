FROM ubuntu:16.04

RUN apt-get update -q
RUN cat /tmp/prova.txt
CMD ["(time dd bs=1M count=1024 if=/dev/zero of=/simple-container-benchmarks-writetest conv=fdatasync) 2> /tmp/prova.txt"]

