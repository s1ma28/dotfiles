umask 022
limit coredumpsize 0
bindkey -d

# enable completions
autoload -U compinit
compinit

# Return if zsh is called from Vim
if [[ -n $VIMRUNTIME ]]; then
    return 0
fi

# tmux_automatically_attach attachs tmux session
# automatically when your are in zsh
# $DOTPATH/bin/tmuxx

# Need Install:
# git clone https://github.com/zplug/zplug $ZPLUG_HOME

export ZPLUG_HOME=$HOME/.zplug

if [[ -f $ZPLUG_HOME/init.zsh ]]; then
    export ZPLUG_LOADFILE=~/.zsh/zplug.zsh
    # For development version of zplug
    # source ~/.zplug/init.zsh
    source $ZPLUG_HOME/init.zsh

    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
        echo
    fi
    zplug load
fi

# Manual Install:
# $ ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
# $ ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async
# $ ln -s "$PWD/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
# $ ln -s "$PWD/async.zsh" "$HOME/.zfunctions/async"

# ColorTheme: Pure
autoload -U promptinit; promptinit
prompt pure

