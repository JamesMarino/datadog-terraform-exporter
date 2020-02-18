APP_DIR=app
BIN_DIR=bin
TEMPLATES_DIR=templates
BIN_NAME=datadog-terraform-exporter

generate:
	go-bindata -o $(APP_DIR)/templates.go $(TEMPLATES_DIR)
.PHONY: generate

install: generate
	go get -u github.com/jteeuwen/go-bindata/...
.PHONY: install

build: install
	cd $(APP_DIR) && go build -o ../$(BIN_DIR)/$(BIN_NAME)
.PHONY: build
