FROM docker:1.11

RUN apk add --no-cache \
  tmux \
  fish \
  openssh

ENV SHELL=/usr/bin/fish

ENTRYPOINT tmux
