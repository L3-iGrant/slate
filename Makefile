PROJECT := igrant
APP     := slate
NAME    = $(PROJECT)-$(APP)

PROJECT_PACKAGE         := github.com/igrant/$(APP)
PKG_LIST_CMD = go list ./... | grep -v '/vendor/\|/mocks/\|/tmp/'
SOURCE_FILES = $(shell /usr/bin/find . -type f -name '*.go' -not \( -path './vendor/*' -or -path './mocks/*' -or -path './tmp/*' -or -path './resources/*' \))

TERM_FLAGS ?= -ti

EXTRA_RUN_ARGS ?=

PKGS = $(shell $(PKG_LIST_CMD))

VERSION   ?= $(shell git describe --tags --abbrev=0)
CANDIDATE ?= "dev"
CONTAINER_SLATE ?= "igrant_slate_dev"

CONTAINER_DEFAULT_RUN_FLAGS := \
	--rm $(TERM_FLAGS) \
	$(EXTRA_RUN_ARGS) \
	-v "$(CURDIR)":/go/src/$(PROJECT_PACKAGE) \
	-w /go/src/$(PROJECT_PACKAGE)

GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD | sed -E 's/[^a-zA-Z0-9]+/-/g')
GIT_COMMIT := $(shell git rev-parse --short HEAD)

# jenkins specific
ifdef BRANCH_NAME
    GIT_BRANCH = $(shell echo $(BRANCH_NAME) | tr '[:upper:]' '[:lower:]' | tr -cd '[[:alnum:]]_-')
endif

DEPLOY_VERSION_FILE = ./deploy_version
DEPLOY_VERSION = $(shell test -f $(DEPLOY_VERSION_FILE) && cat $(DEPLOY_VERSION_FILE))

GCLOUD_HOSTNAME = eu.gcr.io
GCLOUD_PROJECTID = jenkins-189019
DOCKER_IMAGE := ${GCLOUD_HOSTNAME}/${GCLOUD_PROJECTID}/$(NAME)

# tag based on git branch, date and commit
DOCKER_TAG := $(GIT_BRANCH)-$(shell date +%Y%m%d%H%M%S)-$(GIT_COMMIT)

DIST_FILE := dist/linux_amd64/$(NAME)

.DEFAULT_GOAL := help
.PHONY: help
help:
	@echo "------------------------------------------------------------------------"
	@echo "iGrant slate"
	@echo "------------------------------------------------------------------------"
	@grep -E '^[0-9a-zA-Z_/%\-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.bootstrap:
	git clone git@github.com:L3-iGrant/bootstrap.git "$(CURDIR)/.bootstrap"

.PHONY: bootstrap
bootstrap: .bootstrap ## Boostraps development environment
	git -C $(CURDIR)/.bootstrap fetch --all --prune
	git -C $(CURDIR)/.bootstrap reset --hard origin/master
	make -C .bootstrap bootstrap

setup: bootstrap build/docker/builder ## Sets up development environment

console: ## Runs bash shell, i.e. builder/console
	@bash

builder/%:: DOCKER_BIN=$(shell command -v docker 2>/dev/null || echo 'docker')
builder/%:: ## Runs make target in builder container (example: make builder/console)
	@if [ -x $(DOCKER_BIN) ] && $(DOCKER_BIN) info >/dev/null 2>&1 ; then \
		docker run \
			$(shell env | grep ^TRAVIS | cut -d= -f1  | awk '{print "-e", $$1}') \
			$(CONTAINER_DEFAULT_RUN_FLAGS) \
			$(DOCKER_IMAGE):builder \
			make $*; \
	else \
		make $*; \
	fi

slate/build: builder/_slate/build ## Builds slate
_slate/build:
	bundle exec middleman build

$(DIST_FILE): builder/_$(DIST_FILE) ## Builds deployable SLATE executable (statically linked and optimized)
_$(DIST_FILE):
	bundle exec middleman build

slate/run: ## Run SLATE locally for development purposes
	docker run \
		$(CONTAINER_DEFAULT_RUN_FLAGS) \
		--expose 80 \
		-e VIRTUAL_HOST=$(APP).$(PROJECT).dev \
		--name "${CONTAINER_SLATE}" \
		$(DEPLOY_VERSION)

clean: mock/clean
	rm -rf ./bin

build/docker/builder: ## Builds docker image containing dependency for building the project
	docker build -t $(DOCKER_IMAGE):builder -f resources/docker/builder/Dockerfile .

.PHONY: build/docker/deployable
build/docker/deployable: $(DIST_FILE) ## Builds deployable docker image for preview, staging and production
	docker build -t $(DOCKER_IMAGE):$(DOCKER_TAG) -f resources/docker/production/Dockerfile .
	echo "$(DOCKER_IMAGE):$(DOCKER_TAG)" > $(DEPLOY_VERSION_FILE)

.PHONY: publish
publish: $(DEPLOY_VERSION_FILE) ## Publish latest production Docker image to docker hub
	gcloud docker -- push $(DEPLOY_VERSION)

deploy/production: $(DEPLOY_VERSION_FILE) ## Deploy to K8s cluster (e.g. make deploy/{preview,staging,production})
	kubectl set image deployment/igrant-slate igrant-slate=$(DEPLOY_VERSION) -n production

deploy/staging: $(DEPLOY_VERSION_FILE) ## Deploy to K8s cluster (e.g. make deploy/{preview,staging,production})
	kubectl set image deployment/igrant-slate-staging igrant-slate-staging=$(DEPLOY_VERSION) -n staging

.PHONY: release
release:  ## Produces binaries needed for a release
	make builder/clean _slate/build

$(DEPLOY_VERSION_FILE):
	@echo "Missing '$(DEPLOY_VERSION_FILE)' file. Run 'make build/docker/deployable'" >&2
	exit 1

