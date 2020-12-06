FROM ubuntu:20.10

RUN apt update && \
    apt upgrade && \
    apt install -y \
        sudo \
        vim \
        zsh

RUN echo "%adm	ALL=(ALL)	NOPASSWD: ALL" > /etc/sudoers.d/adm && \
    chmod 0440 /etc/sudoers.d/adm

ARG USERNAME
ENV USERNAME=${USERNAME}
RUN useradd -G adm $USERNAME
USER $USERNAME