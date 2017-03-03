FROM debian:jessie

RUN apt-get update \
    && apt-get install -y wget \
    && wget https://repo.percona.com/apt/percona-release_0.1-4.jessie_all.deb \
    && dpkg -i percona-release_0.1-4.jessie_all.deb \
    && apt-get update \
    && apt-get install -y pmm-client
    
RUN mkdir /percona/pmm-client

COPY run.sh /percona/pmm-client/

RUN chmod 755 /percona/pmm-client/run.sh

ENTRYPOINT ["/percona/pmm-client/run.sh"]
