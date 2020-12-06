.PHONY: clean build run
.DEFAULT_GOAL := run

clean:
	docker rmi --force dockstation

build:
	docker build --tag dockstation \
				 --build-arg USERNAME=$$USER \
				 .

run:
	docker run -it --rm \
		       --volume $HOME:/data \
			   --name dockstation \
			   dockstation
