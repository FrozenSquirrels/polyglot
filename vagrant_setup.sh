#!/bin/bash

apt-get update

function set_git_config_commit_vim {
  git config --global core.editor "vim"
}

function install {
  echo "INSTALLING: $1"
  apt-get -y install $1 || { echo "ERROR: installing ${1}"; exit 1; }
}

function install_node_package_manager {
  if [ ! -e /usr/bin/npm ]; then
    install npm
  fi
  #Switch to http version (as apposed to https) due to proxy auth issues.
  #https://github.com/npm/npm/issues/2119
  npm config set registry http://registry.npmjs.org/
  npm install npm -g.
}

#upgrade nodejs
function install_nodejs {
  curl -sL https://deb.nodesource.com/setup | sudo bash -
  apt-get install -y nodejs
}


install ssh

install screen
install vim

set_git_config_commit_vim

install python-pip

pip install bottle

install python-sqlalchemy

install sqlite3
install libsqlite3-dev


install curl
install_nodejs

install_node_package_manager

install xvfb
pip install selenium
install chromium-browser
