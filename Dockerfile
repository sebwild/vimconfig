FROM ubuntu:14.04
MAINTAINER sebastianwilde@live.de 

# git config --global user.email sebastianwilde@live.de
# git config --global user.name sebwild


# Install libs
# Install pip
# Install npm and other node libs
# mkdir .vim to store wim settings 
# Clone VIM settings and bundles to .vim
# Recompile YouCompleteMe
# Redirect from .vimrc to .vim/vimrc
RUN sudo apt-get update \ 
    && apt-get install -y git vim nodejs-legacy npm build-essential cmake python-dev curl \
    && curl --url https://bootstrap.pypa.io/get-pip.py >> /root/get-pip.py \
    && python /root/get-pip.py \
    && rm /root/get-pip.py \
    && npm install -g npm typescript jshint \
    && mkdir /root/.vim \
    && git clone --recursive https://github.com/sebwild/vimconfig.git /root/.vim \
    && python /root/.vim/bundle/YouCompleteMe/install.py --tern-completer \
    && echo 'runtime vimrc' > /root/.vimrc

