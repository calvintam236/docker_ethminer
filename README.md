# What is ethminer?

ethminer is the console miner provided by [ethereum-mining](https://github.com/ethereum-mining/ethminer).

ethminer supports Ethereum (ETH), and Ethereum Classic (ETC).

# How to use this image [NVIDIA version]

Run in background:

```console
$ docker run -d --device /dev/nvidia0 --device /dev/nvidiactl --device /dev/nvidia-uvm --name YOUR_CONTAINER_NAME calvintam236/ethminer:nvidia -U -S YOUR_POOL_ADDRESS -O YOUR_USERNAME.YOUR_WORKER_NAME:YOUR_WORKER_PASSWORD
```

Get `ethminer` options with:

```console
$ docker run --rm calvintam236/ethminer:nvidia
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
