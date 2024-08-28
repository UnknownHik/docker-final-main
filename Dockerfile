FROM golang:1.22

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /docker-final-main

CMD ["/docker-final-main"]