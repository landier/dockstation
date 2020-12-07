.PHONY: clean build run
.DEFAULT_GOAL := run
image_name = landier/dockstation

clean:
	docker rmi --force dockstation

build:
	docker build --tag $(image_name) \
				 --build-arg USERNAME=$$USER \
				 .

run:
	docker run -it --rm \
		       --volume $$HOME:/data \
			   --name dockstation \
			   $(image_name)
