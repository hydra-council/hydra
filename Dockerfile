FROM golang:1.23-alpine AS builder

WORKDIR /app

RUN apk update &&  \
    apk add --no-cache gcc musl-dev

COPY . .

WORKDIR /app/src

ENV CGO_ENABLED=1

# get depedencies
RUN go mod tidy

# build optimized binary without debugging symbols
RUN go build -ldflags "-s -w" -o app main.go

FROM alpine:latest

WORKDIR /app/

RUN apk update && apk add openssh

COPY --from=builder /app/src/app .

ENV HYDRA_IS_DOCKER=true

EXPOSE 9221

CMD ["./app"]
