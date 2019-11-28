.PHONY:

DOCKER_IMAGE_TAG ?= cortezaproject/elk

image:
	docker build --rm --no-cache --tag $(DOCKER_IMAGE_TAG) .

image-push:
	docker push $(DOCKER_IMAGE_TAG)
