ROOT=$(shell git rev-parse --show-toplevel)
BUILD_DATE=$(shell date '+%F-%T')

.PHONY: install
install: install-sumry install-vergo

.PHONY: make-bin-dir
make-bin-dir:
	mkdir -p "${ROOT}/bin"

.PHONY: build-sumry
build-sumry: make-bin-dir
	echo "building sumry"
	go build -o bin/sumry ./cmd/sumry/main.go

.PHONY: install-sumry
install-sumry: build-sumry
	echo "installing sumry"
	cp "${ROOT}/bin/sumry" "${HOME}/bin/sumry"

.PHONY: build-vergo
build-vergo: make-bin-dir
	echo "building vergo"
	go build -o bin/vergo ./cmd/vergo/main.go

.PHONY: install-vergo
install-vergo: build-vergo
	echo "installing vergo"
	cp "${ROOT}/bin/vergo" "${HOME}/bin/vergo"
