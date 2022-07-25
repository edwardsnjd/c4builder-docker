# Sanity
# From: https://tech.davis-hansson.com/p/make/

SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# Paths

PWD := $(shell pwd)
BIN_DIR := ~/.local/bin
BIN_STUB := c4builder

# Convenience targets

help:
	@echo "Targets:"
	@echo "- build = build the docker image locally"
	@echo "- install = make binstub available in ~/.local/bin"
	@echo "- uninstall = remove binstub from in ~/.local/bin"
.PHONY: all

build:
	docker build -t c4builder .
.PHONY: build

install:
	@echo "Installing ${BIN_STUB} binstub link in ${BIN_DIR}"
	@ln -sv ${PWD}/${BIN_STUB} ${BIN_DIR}/${BIN_STUB}
.PHONY: install

uninstall:
	@echo "Uninstalling ${BIN_STUB} binstub link from ${BIN_DIR}"
	@[[ -h ${BIN_DIR}/${BIN_STUB} ]] && rm -v ${BIN_DIR}/${BIN_STUB}
.PHONY: uninstall
