FROM golang:alpine3.21 AS builder
ENV GO111MODULE=on
RUN go install github.com/norwoodj/helm-docs/cmd/helm-docs@v1.14.2

FROM alpine:3.21
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY --from=builder /go/bin/helm-docs /usr/local/bin/helm-docs
ENTRYPOINT ["/docker-entrypoint.sh"]
