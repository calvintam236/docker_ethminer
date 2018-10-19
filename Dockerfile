FROM calvintam236/ubuntu:rocm

LABEL maintainer="calvintam236"
LABEL description="ethminer in Docker. Supports GPU mining."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libidn11 \
    && curl -L -O https://github.com/ethereum-mining/ethminer/releases/download/v0.16.1/ethminer-0.16.1-linux-x86_64.tar.gz \
    && tar -xvf ethminer-0.16.1-linux-x86_64.tar.gz \
    && rm ethminer-0.16.1-linux-x86_64.tar.gz \
    && mv bin/ethminer /usr/local/bin/ethminer \
    && chmod a+x /usr/local/bin/ethminer \
    && rm -r bin \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["ethminer"]
CMD ["--help"]
