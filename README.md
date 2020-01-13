## ethminer

### What is it?

ethminer is the console miner contributed by [ethereum-mining](https://github.com/ethereum-mining/ethminer).

ethminer supports Ethash.

Due to licensing, no one can redistribute the software. Please build this image in your environment.

### Example usages

- To build the image:

```console
$ docker build . --file YOUR_VERSION/Dockerfile.YOUR_ARCH --tag calvintam236/ethminer:mesa-YOUR_VERSION

$ docker build . --file YOUR_VERSION/Dockerfile.YOUR_ARCH --tag calvintam236/ethminer:rocm-YOUR_VERSION

$ curl -L -O --referer https://www.amd.com https://drivers.amd.com/drivers/linux/amdgpu-pro-19.30-934563-ubuntu-18.04.tar.xz
$ docker build . --file YOUR_VERSION/Dockerfile.YOUR_ARCH --tag calvintam236/ethminer:amdgpu-YOUR_VERSION

$ docker build . --file YOUR_VERSION/Dockerfile.YOUR_ARCH --tag calvintam236/ethminer:cuda-YOUR_VERSION
```

- To run the container in background:

```console
$ docker run -d --device /dev/kfd --device /dev/dri --name YOUR_CONTAINER_NAME calvintam236/ethminer:mesa-YOUR_VERSION YOUR_USERNAME.YOUR_WORKER_NAME@YOUR_POOL_ADDRESS -G

$ docker run -d --device /dev/kfd --device /dev/dri --name YOUR_CONTAINER_NAME calvintam236/ethminer:rocm-YOUR_VERSION YOUR_USERNAME.YOUR_WORKER_NAME@YOUR_POOL_ADDRESS -G

$ docker run -d --device /dev/kfd --device /dev/dri --name YOUR_CONTAINER_NAME calvintam236/ethminer:amdgpu-YOUR_VERSION YOUR_USERNAME.YOUR_WORKER_NAME@YOUR_POOL_ADDRESS -G

$ docker run -d --device /dev/nvidia0 --device /dev/nvidiactl --device /dev/nvidia-uvm --name YOUR_CONTAINER_NAME calvintam236/ethminer:cuda-YOUR_VERSION YOUR_USERNAME.YOUR_WORKER_NAME@YOUR_POOL_ADDRESS -U
```

- To get `ethminer` options:

```console
$ docker run --rm calvintam236/ethminer:mesa-YOUR_VERSION

$ docker run --rm calvintam236/ethminer:rocm-YOUR_VERSION

$ docker run --rm calvintam236/ethminer:amdgpu-YOUR_VERSION

$ docker run --rm calvintam236/ethminer:cuda-YOUR_VERSION
```

- To fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```

### Donations

If you like to buy me a coffee, you can donate to here:

- [Ko-fi](https://ko-fi.com/calvintam236)
- BTC: `1MTkPFtp3qxE4Y98pTHP3z767RGKmrT92a`
- ETH: `0x5896a85E8c175c563DC00087535582394d394838`
- XMR: `474adYsC8sLVM5gK8DbvtUVb237y9m5eMeRuYpJJVuoYUuMN5EYDuixHWxpEr6iNBb2zv3gowmJjcRoTrjhJLvMTRD1eKio`
- ETC: `0xFaBA3be3b3De5469C3F6C6185150928F3773C7b4`
- ZEC: `t1Z5Kc75JQ17txyaDUfwwyabTgsJMfuuSp4`
