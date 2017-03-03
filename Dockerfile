FROM debian:jessie

RUN wget https://repo.percona.com/apt/percona-release_0.1-4.jessie_all.deb \
    && sudo dpkg -i percona-release_0.1-4.jessie_all.deb \
    && sudo apt-get update \
    && sudo apt-get install pmm-client
    
RUN mkdir /percona/pmm-client

COPY run.sh /percona/pmm-client/

RUN chmod 755 /percona/pmm-client/run.sh

ENTRYPOINT ["/percona/pmm-client/run.sh"]
