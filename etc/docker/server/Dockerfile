FROM golang:1.22-alpine as builder

RUN mkdir /build
WORKDIR /build

ADD cfg /build/cfg
ADD cmd /build/cmd
ADD ent /build/ent
ADD gql /build/gql
ADD http /build/http
ADD internal /build/internal
ADD pkg /build/pkg
ADD service /build/service
ADD vendor /build/vendor
ADD go.mod go.sum /build/

ENV GOCACHE=/root/.cache/go-build

RUN --mount=type=cache,target="/root/.cache/go-build" go build -o jhana cmd/main.go


# go server
FROM alpine:3.19

RUN apk add --upgrade tzdata && rm -rf /var/cache/apk/*

ARG VERSION
RUN echo -n ${VERSION} > /etc/version

RUN mkdir /app
WORKDIR /app

RUN adduser -S -D -H -h /app user
USER user

COPY --from=builder /build/jhana /app/

ENV PATH="/app:${PATH}"

EXPOSE 3000

CMD ["/app/jhana", "api"]
