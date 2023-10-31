#!/usr/bin/env bash

export USER_NAME=$(whoami)
export USER_ID=$(id -u $USER_NAME)

docker build -t ansible .

docker run --rm -it \
  -v ~/.ssh/:/home/$USER_NAME/.ssh/ \
  -v $(pwd):/home/$USER_NAME/ansible \
  -w /home/$USER_NAME/ansible \
  ansible "$@"
  