if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship init fish | source

source ~/.exports
source ~/.profile
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# Aliases
alias connect-vpn='echo i317Mh! | sudo openconnect --quiet --user=lucas.moreira --passwd-on-stdin --authgroup=ACS --background --pid-file=/tmp/net.pid --server=168.205.253.60 --servercert pin-sha256:MztABM0IIrDhK4501VH6KRe1qyIZQSpPkqei7fIm6s4='
alias disconnect-vpn='sudo kill -15 $(cat /tmp/net.pid)'
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
alias copy="tr -d '\n' | pbcopy"
alias bat='bat --style header --style snip --style changes --style header'
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias vim='nvim'
alias k='kubectl --kubeconfig ~/www/work/k0s/.kube/config'

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# go
set --export GOPATH "$HOME/go"

export PATH="$PATH:$HOME/.local/bin"

function fish_right_prompt
  # intentionally left blank
end
