## goctl docker 1.3.3

[docker image]: https://hub.docker.com/r/tianying484/goctl



> GOCTL_OS=linux
> GOCTL_ARCH=amd64
> GOCTL_HOME=/root/.goctl
> GOCTL_DEBUG=False
> GOCTL_CACHE=/root/.goctl/cache
> GOCTL_VERSION=1.3.3
> PROTOC_VERSION=3.18.1
> PROTOC_GEN_GO_VERSION=v1.28.0
> PROTO_GEN_GO_GRPC_VERSION=1.1.0



```shell
docker run --rm -v $(pwd):$(pwd) -w $(pwd)  tianying484/goctl:1.3.3 goctl api go -api ./api/issue.api -dir ./issue-web
```




```shell
docker run --rm -v $(pwd):$(pwd) -w $(pwd)  tianying484/goctl:1.3.3 goctl rpc protoc ./api/issue.proto --go_out=./issue/pb --go-grpc_out=./issue/pb --zrpc_out=.
```