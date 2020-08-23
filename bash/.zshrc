[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
eval "$(pyenv init -)"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
ssh-add -K ~/.ssh/id_rsa.github.com
