FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="ethminer in Docker. Supports CPU & GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install software-properties-common \
    && add-apt-repository ppa:ethereum/ethereum \
    && apt-get update \
    && apt-get -y --no-install-recommends install ethminer \
    && rm -r /var/lib/apt/lists/*

ENTRYPOINT ["ethminer"]
