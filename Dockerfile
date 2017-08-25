FROM calvintam236/ubuntu:amdgpu-pro

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="ethminer in Docker. Supports GPU mining."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libidn11 \
    && curl -L -O https://github.com/ethereum-mining/ethminer/releases/download/v0.11.0/ethminer-0.11.0-Linux.tar.gz \
    && tar -xvf ethminer-0.11.0-Linux.tar.gz \
    && rm ethminer-0.11.0-Linux.tar.gz \
    && mv bin/ethminer /usr/local/bin/ethminer \
    && chmod a+x /usr/local/bin/ethminer \
    && rm -r bin \
    && export GPU_FORCE_64BIT_PTR=0 \
    && export GPU_MAX_HEAP_SIZE=100 \
    && export GPU_USE_SYNC_OBJECTS=1 \
    && export GPU_MAX_ALLOC_PERCENT=100 \
    && export GPU_SINGLE_ALLOC_PERCENT=100 \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["ethminer"]
