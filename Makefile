VERSION = $(shell cat VERSION)
DOCKER_USER = pablo91
IMAGE_NAME = php

ver:
	@echo ${VERSION}

create:
	docker build --tag=${DOCKER_USER}/${IMAGE_NAME}:${VERSION} .
	docker image prune -f

run:
	docker run -it --rm ${DOCKER_USER}/${IMAGE_NAME}:${VERSION} bash

upload:
	docker push ${DOCKER_USER}/${IMAGE_NAME}:${VERSION}
