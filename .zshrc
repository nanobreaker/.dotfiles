# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="hyper-oh-my-zsh"

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 9

ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	zsh-navigation-tools 
	archlinux 
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source ~/.profile
source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR="vim"
export ARCHFLAGS="-arch x86_64"

# custom functions
fs() {
    grep -Ril $1 $2
}

s() {
	grep -Rnw $2 -e $1
}

# custom aliases
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
