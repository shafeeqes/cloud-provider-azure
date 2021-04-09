############# builder            #############
FROM eu.gcr.io/gardener-project/3rd/golang:1.16.3 AS builder

WORKDIR /go/src/github.com/gardener/cloud-provider-azure
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install \
  -mod=vendor \
  ./cmd/...

############# base               #############
FROM eu.gcr.io/gardener-project/3rd/alpine:3.13.4 AS base

WORKDIR /

############# cloud-provider-azure #############
FROM base AS cloud-provider-azure

COPY --from=builder /go/bin/azure-cloud-controller-manager /azure-cloud-controller-manager

ENTRYPOINT ["/azure-cloud-controller-manager"]
