FROM docker:1.11

RUN apk add --no-cache \
  tmux \
  fish

ENV SHELL=/usr/bin/fish

ENTRYPOINT tmux
