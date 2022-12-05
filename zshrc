# Zsh
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# Plugin manager
eval "$(sheldon source)"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh
[ -f ~/.asdf/plugins/java/set-java-home.zsh ] && source ~/.asdf/plugins/java/set-java-home.zsh

# Bun
export BUN_INSTALL=~/.bun
export PATH="$BUN_INSTALL/bin:$PATH"
[ -f ~/.bun/_bun ] && source ~/.bun/_bun # completions

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Prompt
eval "$(starship init zsh)"
