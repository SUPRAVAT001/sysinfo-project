

FROM ubuntu:latest


RUN apt-get update && apt-get install -y procps coreutils bash


COPY sysinfo.sh /sysinfo.sh


RUN chmod +x /sysinfo.sh


CMD ["/sysinfo.sh"]

