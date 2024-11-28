export PATH=$PATH:/home/nunr/.local/bin

####################
# oh-my-zsh config
####################

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"

HYPHEN_INSENSITIVE="true"

# just remind me to update when it's time
zstyle ':omz:update' mode reminder  

DISABLE_MAGIC_FUNCTIONS="true"

# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# eza plugin config
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'header' yes
zstyle ':omz:plugins:eza' 'show-group' no

# Which plugins would you like to load?
plugins=(
    eza_custom
    aliases
    sudo
    extract
    universalarchive
    fzf
    gitignore
)

source $ZSH/oh-my-zsh.sh


####################
# zsh config
####################

autoload zcalc

setopt HIST_FCNTL_LOCK 
setopt HIST_IGNORE_DUPS 
unsetopt HIST_IGNORE_ALL_DUPS 
setopt HIST_IGNORE_SPACE 
unsetopt HIST_EXPIRE_DUPS_FIRST 
setopt SHARE_HISTORY 
unsetopt EXTENDED_HISTORY 
setopt autocd

alias calc="zcalc"
alias c="clear"
alias aliasG="als"
alias unzipAll="extract"
alias zipAll="ua"

eval "$(zoxide init zsh --cmd cd)"
eval $(thefuck --alias)


####################
# call .zsh_local for device-custom config
####################
[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"


clear -x
neofetch
