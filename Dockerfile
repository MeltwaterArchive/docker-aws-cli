FROM alpine:edge

RUN apk add \
  --update-cache \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  aws-cli \
 && addgroup -g 1000 aws \
 && adduser -D -G aws -u 1000 aws

USER aws
WORKDIR /home/aws

ENTRYPOINT ["aws"]
