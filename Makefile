ROOT=$(shell git rev-parse --show-toplevel)
BUILD_DATE=$(shell date '+%F-%T')

.PHONY: install
install: install-sumry

.PHONY: make-bin-dir
make-bin-dir:
	mkdir -p "${ROOT}/bin"

.PHONY: build-sumry
build-sumry: make-bin-dir
	go build -o bin/sumry ./cmd/sumry/main.go

.PHONY: install-sumry
install-sumry: build-sumry
	cp "${ROOT}/bin/sumry" "${HOME}/bin/sumry"
