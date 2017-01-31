# dock

A modular dev environment with docker.

I use the official docker image as chassis and mount the local docker socket.
Then I am able to use docker images as executables inside my chassis.

It uses a separation of my configs (dotfiles), my data (repos) and my credentials.

## build

```
make build
```

or

```
docker build -t kr1sp1n/dock .
```


## run

```
make clean data dotfiles run
```

or

```
docker run --privileged --name dock --rm -it -v /etc/localtime:/etc/localtime:ro -v ${HOME}/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock --volumes-from data --volumes-from dotfiles kr1sp1n/dock
```
