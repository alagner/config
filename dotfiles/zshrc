setopt correct
export SPROMPT="Correct %R to %r (preceed with nocorrect to disable)? (Yes, No, Abort, Edit) "
setopt auto_cd
autoload -U colors && colors
zmodload -i zsh/complist
autoload -U compinit && compinit
unsetopt menu_complete
#unsetopt flow_control

setopt auto_menu         # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*:*:*:*:*' menu yes select
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES



zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

if [[ "$OSTYPE" = solaris* ]]; then
  zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm"
else
  zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
fi

# disable named-directories autocompletion
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

#update completion  list automatically
zstyle ':completion:*' rehash true
# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR

# Don't complete uninteresting users
zstyle ':completion:*:*:*:users' ignored-patterns \
    $(awk -F: '($3 != 0) && ($3<1000 || $3>60000) {print $1}' /etc/passwd)

# don't repeat the same arg for listed commads
zstyle ':completion:*:(rm|kill|diff|git):*' ignore-line yes

alias ls='ls --color'
alias ll='ls -l'
alias l='ll'
alias la='ll -a'
export PATH="${HOME}/bin:${PATH}"
#if have it, how about you?
export EDITOR=/usr/bin/vim




autoload -U vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

setopt prompt_subst
PROMPT='${vcs_info_msg_0_}%# '

zstyle ':vcs_info:*' enable git

zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' check-for-changes enable
zstyle ':vcs_info:*' stagedstr "added"
zstyle ':vcs_info:*' unstagedstr "added"
zstyle ':vcs_info:git*' formats \
    "%{$fg[grey]%}%s %{$reset_color%}%r/%S%{$fg[grey]%} %{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} "


precmd () { vcs_info }
PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


#


setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M' 
zstyle ':vcs_info:*' unstagedstr 'M' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
#zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git 
#+vi-git-untracked() {
#  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
#  [[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
#  hook_com[unstaged]+='%F{1}??%f'
#fi
#}


precmd () { vcs_info }
#PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_} %f%# '
#
#
#PROMPT='%{$fg[$NCOLOR]%}%n%{$fg[green]%}@%m%{$reset_color%} %~ \
#${vcs_info_msg_0_}\
#%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

RPROMPT='${return_code}'

