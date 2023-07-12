
generate: generate-rest-api-client

tools:
	go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.13

generate-rest-api-client: tools
	oapi-codegen -old-config-style -generate types,client -package ssxclientapi -o ssx-client-api/ssx-client-api.gen.go swagger-api.yaml

.PHONY: tools generate generate-rest-api-client