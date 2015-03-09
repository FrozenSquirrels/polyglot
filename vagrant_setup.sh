#!/bin/bash

apt-get update

function set_git_config_commit_vim {
  git config --global core.editor "vim"
}

function install {
  apt-get -y install $1 || { echo "ERROR: installing ${1}"; exit 1; }
}


install screen
install vim

set_git_config_commit_vim

install python-sqlalchemy
