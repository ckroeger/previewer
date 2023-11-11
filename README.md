# Previewer

## Install go

[Go install](https://go.dev/doc/install)

## Run it locally

```shell
go run src/main.go -src "path/to/images" -templates "path/to/templates"
```
## Run with docker
```shell
docker run -v your/path/to/imagesrc:/app/src -v your/path/to/templates:/app/templates ghcr.io/s-frick/previewer:1.0.1
```

## Build docker image
```shell
docker build -t previewer .
```

## Run it in docker
```shell
docker run -v `pwd`/src:/usr/src/app previewer go run src/main.go -src "examples/images" -templates "examples"
```

![example-big.png](example/images/example-big.png)