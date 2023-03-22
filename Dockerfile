FROM golang:alpine3.17 AS builder
ENV GO111MODULE=on
RUN go install github.com/norwoodj/helm-docs/cmd/helm-docs@latest

FROM alpine:3.17
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY --from=builder /go/bin/helm-docs /usr/local/bin/helm-docs
ENTRYPOINT ["/docker-entrypoint.sh"]
