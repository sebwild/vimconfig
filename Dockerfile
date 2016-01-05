FROM ubuntu:latest
MAINTAINER sebastianwilde@live.de 

# Install libs
RUN sudo apt-get update && apt-get install -y \
  git \
  vim \
  nodejs-legacy \
  npm \
  build-essential \
  cmake \
  python-dev

# Install nodejs / javascript libs
RUN sudo npm install -g \
  npm \
  typescript \
  jshint

# Provide git credentials
RUN git config --global user.email sebastianwilde@live.de
RUN git config --global user.name sebwild

# Setup .vim folder and workdir
RUN mkdir /root/.vim
WORKDIR /root/.vim

# Install git submodules for vim - do not use Vundles :PluginInstall for build docker images
RUN git clone --recursive https://github.com/sebwild/vimconfig.git .

# Recompile YouCompleteMe
RUN python /root/.vim/bundle/YouCompleteMe/install.py --tern-completer

# Write .vimrc
RUN echo 'runtime vimrc' > /root/.vimrc

# Set WORKDIR
WORKDIR /root


