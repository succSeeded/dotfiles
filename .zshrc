export FZF_DEFAULT_COMMAND="fd --type file"
export FZF_DEFAULT_OPTS="--style full \
  --border --padding 1,2 --preview 'if [ -d {} ]; then ls --color -l {}; else bat --style=numbers --color=always {}; fi'\
  --bind 'focus:transform-header:file --brief {}'"
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.config/scripts:$PATH"
export XDG_DATA_HOME="$HOME/.local/share"

alias icat="kitten icat"

# ==================================
# = zsh syntax highlighting tweaks =
# ==================================

typeset -A ZSH_HIGHLIGHT_STYLES

base_color='fg=117'       # cyan-ish
sub1_color='fg=222'       # yellowish-orange
sub2_color='fg=green'
sub3_color='fg=magenta'
sub4_color='fg=123'       # bright cyan

# if, then, fi, for, etc.
ZSH_HIGHLIGHT_STYLES[reserved-word]="${sub1_color},bold"

# Aliases, duh
ZSH_HIGHLIGHT_STYLES[alias]=$base_color
ZSH_HIGHLIGHT_STYLES[suffix-alias]=$base_color
ZSH_HIGHLIGHT_STYLES[global-alias]=$base_color

# Strings and quoted things
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=$sub2_color
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=$sub3_color

# Most of everything
ZSH_HIGHLIGHT_STYLES[command]="${base_color},bold"
ZSH_HIGHLIGHT_STYLES[builtin]="${base_color},bold"
ZSH_HIGHLIGHT_STYLES[default]="${base_color},bold"

# Everything to do with $, env variables etc.
ZSH_HIGHLIGHT_STYLES[comment]="${sub1_color},bold"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="${sub1_color},bold"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="${sub1_color},bold"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="${sub1_color},bold"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

ZSH_AUTOSUGGEST_STRATEGY=(
	history
	completion
)

# oh-my-zsh plugins go here, dummy
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
	poetry
)

source <(fzf --zsh) # fzf keybinds & integration
source $ZSH/oh-my-zsh.sh

STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"


# Created by `pipx` on 2025-12-05 00:41:07
export PATH="$PATH:/home/jilezka/.local/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
