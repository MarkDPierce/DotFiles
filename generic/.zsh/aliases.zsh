alias ls="ls -lanp --color=auto"
alias cls="clear"
alias c="clear"
alias h="history"
alias repos="cd ~/Documents/repos"
alias ping='ping -c 5'
alias branches="cd ~/Documents/repo_branches"
alias myip="curl http://ipecho.net/plain; echo"
alias k=kubectl
alias mk=minikube
#Common typ-o's
alias exti=exit
alias cod=code

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias gcloud-private="gcloud config configurations activate private"
alias gcloud-work="gcloud config configurations activate work"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/markpierce/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/markpierce/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/markpierce/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/markpierce/Documents/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(starship init zsh)"