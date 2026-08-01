# syntax=docker/dockerfile:1
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
      iproute2 iputils-ping curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'export PS1="# "' >> /root/.bashrc

CMD ["/bin/bash"]
