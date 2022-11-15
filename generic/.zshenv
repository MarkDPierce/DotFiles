#Sets ZSH Theme
ZSH_THEME="shades-of-purple-mdp"

#Gives you a reminder to update ZSH
zstyle ':omz:update' mode reminder
# Every 13 days
zstyle ':omz:update' frequency 13

#ZSH Plugins
plugins=(
    git
    git-auto-fetch
    macos
    ansible
    brew
    docker
    docker-compose
    docker-machine
    emoji
    golang
    macos
    terraform
    vscode
)
export ZSH="$HOME/.oh-my-zsh"