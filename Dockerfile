# syntax=docker/dockerfile:1

FROM golang:1.20

WORKDIR /app

COPY go.mod ./

# RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /hello-docker

EXPOSE 4000

ENTRYPOINT ["/hello-docker"]