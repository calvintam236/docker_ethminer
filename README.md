# What is ethminer?

ethminer is the console miner provided by [Ethereum](https://www.ethereum.org/).

ethminer supports Ethereum (ETH), and Ethereum Classic (ETC).

# How to use this image

Run in background with CPU mining:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/ethminer -C -F YOUR_POOL_ADDRESS/YOUR_USERNAME --disable-submit-hashrate
```

Run in background with GPU mining:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/ethminer -G -F YOUR_POOL_ADDRESS/YOUR_USERNAME --disable-submit-hashrate
```

Get ethminer options with:

```console
$ docker run --rm calvintam236/ethminer --help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
