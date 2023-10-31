FROM debian:bullseye

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt update; \
    apt upgrade; \
    apt install -y gcc python3; \
    apt install -y python3-pip; \
    apt install -y python3-venv; \
    apt install -y locales; \
    apt install -y pipx; \
    apt install -y wget; \
    apt install -y bash; \
    apt install -y curl; \
    apt install -y tar; \
    apt install -y openssh-client; \
    apt install -y sshpass; \
    apt install -y git; \
    apt install -y libkrb5-dev; \
    apt auto-clean; \
    apt auto-remove
RUN \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen; \
    locale-gen


RUN pip3 install --upgrade pip; \
    pip3 install --upgrade virtualenv; \
    pip3 install jmspath; \
    pip3 install requests; \
    pip3 install ansible; \
    pip3 install ansible-core; \
    pip3 install ansible-lint; \
    pip3 install ansible-playbook-grapher; \
    ansible-galaxy collection install ansible.posix
