#!/usr/bin/env bash
set -ue

apt-get update
apt-get install \
  curl \
  fzf \
  git \
  wget \
  vim

curl https://sh.rustup.rs -sSf | sh
cargo install \
  git-delta \
  sheldon

git clone --depth 1 https://github.com/asdf-vm/asdf.git ~/.asdf

wget -q https://apt.thoughtbot.com/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.thoughtbot.com/debian/ stable main" | tee /etc/apt/sources.list.d/thoughtbot.list
apt-get update
apt-get install rcm
RCRC=$HOME/.dotfiles/rcrc rcup
