
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  fzf-zsh-plugin
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"
