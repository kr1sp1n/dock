# dock

A modular dev environment with docker.

I use the official docker image and mount the socket.

## build
docker build -t kr1sp1n/dock .

## run
docker run --name dock -it --rm -v /var/run/docker.sock:/var/run/docker.sock --volumes-from dotfiles kr1sp1n/dock
