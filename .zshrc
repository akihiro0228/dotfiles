if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init - zsh)"
    for D in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="original"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH

alias vi='vim'
