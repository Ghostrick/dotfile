# Ubuntu: ~/.config/fish/conf.d/config.fish
# Install theme: fisher add fish/theme

alias vim='nvim' 
alias vi='nvim' 
alias v='nvim'
alias g='git'
alias rm='gvfs-trash'
alias gig='git log --graph'
alias psgr='/etc/init.d/postgresql'

function take --description "take <dirname>"
  mkdir -p $argv[1]
  cd $argv[1]
end

set ANDROID_HOME $HOME/Android/Sdk 

set PATH /opt/elixir/bin $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
