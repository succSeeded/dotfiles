#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

usr_color="\[\033[0;1;36m\]"      # Custom user pill color
usr_text_color="\[\033[30;46m\]"
host_color="\[\033[0;1;34m\]"      # Custom host pill color
host_text_color="\[\033[30;44m\]"
path_color="\[\033[0;1;32m\]"     # Custom path pill color
path_text_color="\[\033[30;42m\]"
prompt_color="\[\033[35m\]"       # Custom prompt symbol color
reset_color="\[\033[0m\]"         # Bash command text color

# Modify PS1
PS1="${usr_color}${usr_text_color}\u${usr_color} ${host_color}${host_text_color}\h${host_color} ${path_color}${path_text_color}\W${path_color}\n ${prompt_color}${reset_color} " 

