# dockstation

[https://hub.docker.com/repository/docker/landier/dockstation]

## Quickstart
```bash
docker run -it \
           --rm \
           --env USER=$USER \
           --volume $HOME:/data \
           --name dockstation \
           landier/dockstation
```

## Build & Run
```bash
git clone git@github.com:landier/dockstation.git
cd dockstation
make build
make run
```
