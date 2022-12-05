#!/usr/bin/env bash
set -ue

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  rcm \
  asdf \
  fzf \
  git-delta \
  sheldon \
  starship \
  vim

RCRC=$HOME/.dotfiles/rcrc rcup
