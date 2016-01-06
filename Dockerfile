FROM ubuntu:latest
MAINTAINER sebastianwilde@live.de 

# Install libs
# Install node libs
# Provide git credentials
# mkdir .vim to store wim settings 
# Clone VIM settings and bundles to .vim
# Recompile YouCompleteMe
# Redirect from .vimrc to .vim/vimrc
RUN sudo apt-get update 
    && apt-get install -y git vim nodejs-legacy npm build-essential cmake python-dev \
    && sudo npm install -g npm typescript jshint \
    && git config --global user.email sebastianwilde@live.de \
    && git config --global user.name sebwild \
    && mkdir /root/.vim \
    && git clone --recursive https://github.com/sebwild/vimconfig.git /root/.vim \
    && python /root/.vim/bundle/YouCompleteMe/install.py --tern-completer \
    && echo 'runtime vimrc' > /root/.vimrc

