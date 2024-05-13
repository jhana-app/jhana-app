FROM node:lts-alpine AS app-env

RUN apk add --no-cache python3 py3-pip openjdk11-jre bash && \
    npm install -g firebase-tools && \
    firebase setup:emulators:ui && \
    rm -rf /var/cache/apk/*

ENV GCP_PROJECT="demo-project"
ENV UI_EMULATOR_PORT="4000"
ENV UI_ENABLED="true"
ENV AUTH_EMULATOR_PORT="9099"
ENV EMULATORS_HOST="0.0.0.0"

RUN mkdir -p /firebase

COPY ./run.sh ./generate_config.js /
RUN chmod +x /run.sh

WORKDIR /firebase

ENTRYPOINT [ "/run.sh" ]