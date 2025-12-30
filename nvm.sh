#!/usr/bin/env bash
# nvm integration for dotfiles — load only for interactive shells
export NVM_DIR="$HOME/.nvm"

if [[ $- == *i* ]] && [ -s "$NVM_DIR/nvm.sh" ]; then
  # shellcheck source=/dev/null
  . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
fi
