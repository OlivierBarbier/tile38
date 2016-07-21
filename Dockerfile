FROM golang:1.6

EXPOSE 9851

WORKDIR /usr/src/myapp

COPY . .

RUN make && make test && mv tile38-server tile38-cli /usr/local/bin
