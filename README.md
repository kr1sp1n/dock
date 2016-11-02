# dock

A modular dev environment with docker.

I use the official docker image as chassis and mount the local docker socket.
Then I am able to use docker images as executables inside my chassis.

It uses a separation of my configs (dotfiles), my data (repos) and my credentials.

## build

```
docker build -t kr1sp1n/dock .
```
or
```
make build
```

## run

```
docker run --name dock --rm -it -v ${HOME}/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock --volumes-from data --volumes-from dotfiles kr1sp1n/dock
```
or
```
make run
```
