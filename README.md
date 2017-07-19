# What is ethminer?

ethminer is the console miner provided by [ethereum-mining](https://github.com/ethereum-mining/ethminer).

ethminer supports Ethereum (ETH), and Ethereum Classic (ETC).

# How to use this image

Run in background with AMD (OpenCL) GPU mining:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/ethminer -G -F YOUR_POOL_ADDRESS -O YOUR_USERNAME.YOUR_WORKER_NAME:YOUR_WORKER_PASSWORD
```

Run in background with Nvidia (CUDA) GPU mining:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/ethminer -U -F YOUR_POOL_ADDRESS -O YOUR_USERNAME.YOUR_WORKER_NAME:YOUR_WORKER_PASSWORD
```

Run in background with both AMD (OpenCL) and Nvidia (CUDA) GPUs mining:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/ethminer -X -F YOUR_POOL_ADDRESS -O YOUR_USERNAME.YOUR_WORKER_NAME:YOUR_WORKER_PASSWORD
```

Get ethminer options with:

```console
$ docker run --rm calvintam236/ethminer --help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
