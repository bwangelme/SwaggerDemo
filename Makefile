.PHONY: doc bin

doc:
	swagger generate spec -o swagger.yaml --scan-models

bin:
	go build -o swaggerdemo .
