
generate: generate-rest-api-client

tools:
	go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.12

generate-rest-api-client: tools
	oapi-codegen -old-config-style -generate types,client -package ssxclientapi -o ssx-rest-api/ssx-client-api.gen.go rest-api-swagger.yaml

build: generate
	go build ./...

.PHONY: tools generate generate-rest-api-client build