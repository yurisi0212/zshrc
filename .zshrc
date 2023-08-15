export PATH=/Applications/MAMP/bin/php/php7.4.33/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


if [[ $(command -v exa) ]]; then
  alias ls='exa --icons --git'
  alias la='exa -T -L 1 -a -l --icons'
  alias lt='exa -T -L 3 -a --icons'
  alias lta='exa -T -L 3 -a -l --icons'
fi

if [[ $(command -v bat) ]]; then
  alias cat='bat'
fi

if [[ $(command -v dust) ]]; then
  alias du='dust'
fi

if [[ $(command -v duf) ]]; then
  alias df='duf'
fi

if [[ $(command -v tokei) ]]; then
  alias tk='tokei'
fi

zle -N zi
bindkey '^z' zi
