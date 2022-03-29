FROM golang:1.18.0-alpine3.15

WORKDIR /opt

ENV GOPROXY="https://goproxy.cn"

RUN apk add --no-cache protobuf

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install github.com/zeromicro/go-zero/tools/goctl@latest && \
    go install github.com/golang/protobuf/protoc-gen-go@v1.5.2 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1 

RUN wget -O /opt/protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v3.19.4/protoc-3.19.4-linux-x86_64.zip && \
    unzip /opt/protoc.zip && \
    mv /opt/include/* /usr/include/ && \
    rm -rf /opt/include /opt/bin/protoc

CMD [ "/bin/bash" ]


# RUN apk add --no-cache protobuf git \
#   && cp /go/bin/protoc-gen-go /usr/bin/
# COPY include /usr/include