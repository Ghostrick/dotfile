# Ubuntu: ~/.config/fish/conf.d/config.fish
# Install theme: fisher add fish/theme

alias vim='nvim' 
alias vi='nvim' 
alias v='nvim'
alias g='git'
alias gig='git log --graph'
alias psgr='/etc/init.d/postgresql'

function take --description "take <dirname>"
  mkdir -p $argv[1]
  cd $argv[1]
end

if test -d $HOME/Android/Sdk
  set ANDROID_HOME $HOME/Android/Sdk 
  set PATH $ANDROID_HOME/tools $PATH
  set PATH $ANDROID_HOME/platform-tools $PATH
end

if test -d /opt/elixir/bin
  set PATH /opt/elixir/bin $PATH
end

if test -d /opt/android-studio/bin
  set PATH /opt/android-studio/bin/ $PATH
end

if test -d $HOME/.cargo/bin
  set PATH $HOME/.cargo/bin $PATH
end

if test -d $HOME/flutter
  set PATH $HOME/flutter/bin $PATH
end

if test -d /usr/local/cuda/bin
  set PATH /usr/local/cuda/bin $PATH
  set LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH
end

source ~/.asdf/asdf.fish
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

if test -z $TMUX
  tmux new-session
end
