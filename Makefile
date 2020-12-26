.PHONY: clean build run
.DEFAULT_GOAL := run
image_name = landier/dockstation

clean:
	docker rmi --force dockstation

build:
	docker build --tag $(image_name) .

run:
	docker run -it --rm \
			   --env USER=$$USER \
		       --volume $$HOME:/data \
			   --name dockstation \
			   $(image_name)
