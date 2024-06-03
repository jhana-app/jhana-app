FROM arigaio/atlas:0.23.0-community-alpine as atlas
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
COPY --from=atlas /atlas /app/

COPY migrations /migrations

# Copy the entire script directory
COPY --chown=user:user etc/docker/server/scripts /app/scripts

# Apply 'sed' and 'chmod' to each script in the directory
RUN find /app/scripts -type f -exec sed -i 's/\r$//g' {} \; -exec chmod +x {} \;

ENV PATH="/app:${PATH}"

EXPOSE 3000

ENTRYPOINT ["/app/scripts/entrypoint.sh"]

CMD ["/app/jhana", "api"]
