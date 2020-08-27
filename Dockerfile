############# builder            #############
FROM golang:1.15.0 AS builder

WORKDIR /go/src/github.com/gardener/cloud-provider-azure
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install \
  -mod=vendor \
  ./cmd/...

############# base               #############
FROM alpine:3.12.0 AS base

WORKDIR /

############# cloud-provider-azure #############
FROM base AS cloud-provider-azure

COPY --from=builder /go/bin/azure-cloud-controller-manager /azure-cloud-controller-manager

ENTRYPOINT ["/azure-cloud-controller-manager"]
