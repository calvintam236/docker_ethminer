FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="ethminer in Docker. Supports CPU & GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl \
    && rm -r /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L -O https://github.com/ethereum-mining/ethminer/releases/download/v0.11.0/ethminer-0.11.0-Linux.tar.gz \
    && tar -xvf ethminer-0.11.0-Linux.tar.gz \
    && mv bin/ethminer /usr/local/bin/ethminer \
    && rm -r bin

ENTRYPOINT ["ethminer"]
