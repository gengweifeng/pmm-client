FROM debian:jessie

RUN sudo apt-get update \
    && apt-get install wget \
    && wget https://repo.percona.com/apt/percona-release_0.1-4.jessie_all.deb \
    && dpkg -i percona-release_0.1-4.jessie_all.deb \
    && apt-get update \
    && apt-get install pmm-client
    
RUN mkdir /percona/pmm-client

COPY run.sh /percona/pmm-client/

RUN chmod 755 /percona/pmm-client/run.sh

ENTRYPOINT ["/percona/pmm-client/run.sh"]
