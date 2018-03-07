# vim:ft=zplug

ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=https

zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "~/.zsh", from:local, use:"<->_*.zsh"

zplug "yous/vanilli.sh"

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"

zplug "b4b4r07/enhancd", use:init.sh
export ENHANCD_COMMAND=ed
export ENHANCD_FILTER=fzy:fzf:peco

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:"fzf", \
    frozen:1

zplug "b4b4r07/zsh-gomi", as:command, use:bin/gomi

zplug "zsh-users/zsh-history-substring-search", defer:3
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

##########################

# zplug "mollifier/cd-gitroot"

# zplug "glidenote/hub-zsh-completion"
# zplug 'Valodim/zsh-curl-completion'

# zplug 'b4b4r07/fzf-powertools', \
    # as:command, \
    # use:'re'
