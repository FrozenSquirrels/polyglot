#!/bin/bash
###############
# Setup a new Linux machine for development.
###############

sudo apt-get update

function set_git_config_commit_vim {
  git config --global core.editor "vim"
}

function install {
  echo "INSTALLING: $1"
  sudo apt-get -y install $1 || { echo "ERROR: installing ${1}"; exit 1; }
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


function install_chromedriver {
  #https://devblog.supportbee.com/2014/10/27/setting-up-cucumber-to-run-with-Chrome-on-Linux/
  sudo apt-get install unzip
  wget -N http://chromedriver.storage.googleapis.com/2.10/chromedriver_linux32.zip -P ~/Downloads
  unzip ~/Downloads/chromedriver_linux32.zip -d ~/Downloads
  chmod +x ~/Downloads/chromedriver
  sudo mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver
  sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
  sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
}

function setup_web_browser_testing {
  install xvfb
  sudo pip install pyvirtualdisplay
  sudo pip install selenium
  install chromium-browser
#  npm install chromedriver
  install_chromedriver
}


install ssh
install screen
install vim
install curl

set_git_config_commit_vim

install python-pip

sudo pip install bottle
install python-sqlalchemy
install sqlite3
install libsqlite3-dev

#install_nodejs

#install_node_package_manager

setup_web_browser_testing

install mongodb-server

