FROM ubuntu:20.10

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y \
        git \
        sudo \
        vim \
        zsh

RUN echo "%adm	ALL=(ALL)	NOPASSWD: ALL" > /etc/sudoers.d/adm && \
    chmod 0440 /etc/sudoers.d/adm

RUN mkdir /data

ADD entrypoint.sh /entrypoint.sh
RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]

