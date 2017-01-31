build:
	docker build -t kr1sp1n/dock .

clean:
	- docker rm -f dock
	- docker rm -f data
	- docker rm -f dotfiles

data:
	docker create -v ${HOME}:/data --name data tianon/true

dotfiles:
	docker create -v /root --name dotfiles kr1sp1n/dotfiles

run:
	docker run --privileged --name dock --rm -it -v ${HOME}/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock --volumes-from data --volumes-from dotfiles kr1sp1n/dock
