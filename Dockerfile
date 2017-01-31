FROM docker:1.11

RUN apk add --update --no-cache \
  tmux \
  fish \
  bc \
  git \
  openssh \
  tzdata \
  make

# openntpd \

ENV SHELL=/usr/bin/fish
ENV HOSTNAME=dock

COPY entrypoint.sh /entrypoint.sh

WORKDIR /data

ENTRYPOINT /entrypoint.sh
