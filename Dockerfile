# create Dockerfile with this content
FROM alpine:latest

RUN apk --no-cache add aws-cli wget curl \
    && wget https://dl.k8s.io/release/v1.32.3/bin/linux/amd64/kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && apk del wget