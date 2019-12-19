export HISTSIZE=-1
export HISTFILESIZE=-1
export PAGER="less"
export EDITOR="vim"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

export PATH="$HOME/bin:$HOME/android-studio/bin:$HOME/.rbenv/bin:$HOME/.rbenv/libexec:$PATH"
## Pip-installed packages
export PATH="$HOME/.local/bin:$PATH"

eval "$(rbenv init -)"
#eval "$(exenv init -)"
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export GOROOT=$HOME/go1.12
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/projects/go
export PATH=$PATH:$(go env GOPATH)/bin
export GO111MODULE=on
#export GOFLAGS=-mod=vendor

unamC='\u'; unamC="\[\e[1;38;5;110m\]$unamC\[\e[0m\]"
hostC='\h'; hostC="\[\e[1;38;5;180m\]$hostC\[\e[0m\]"
pathC='\w'; pathC="\[\e[1;38;5;229m\]$pathC\[\e[0m\]"
timeC='\t'; timeC="\[\e[1;38;5;240;48;5;0m\]$timeC\[\e[0m\]"

if [ `id -un` != 'root' ]; then
  sep1="\[\e[1;37m\]@\[\e[0m\]"
 else
  sep1="\[\e[1;31m\]\#\[\e[0m\]"
fi

export PS1="$timeC $unamC$sep1$hostC:$pathC>"

#aliases

alias lynx='lynx -nopause'
alias less='less -R'
alias gvim='gvim --servername GVIM --remote-silent'
alias vim='vim --servername VIM --remote-silent'
alias e=gvim
alias localserver="ruby -run -ehttpd . -p8000"

alias rgrep='grep -r --color --exclude-dir=".svn" --exclude="*.log" --exclude="*.sock" --exclude="tags" --exclude="acunote.js" --exclude-dir="public/static_content*" --exclude-dir="_build" --exclude-dir="coverage" --exclude-dir="venv" --exclude-dir="node_modules" --exclude-dir="trash"'
#alias rg='rg -g "!*.svn" -g "!*.log" -g "!*.sock" -g "!tags" -g "!acunote.js" -g "!public/static_content*" -g "!_build/*" -g "!coverage/*" -g "!venv/*"  -g "!node_modules/*"

alias diff2ps="enscript -2 --highlight=diffu --landscape --line-numbers --continuous-page-numbers --output=diff.ps"
alias my-puppet-server='puppet master --verbose --no-daemonize --certname 127.0.0.1'

source ~/.bashrc_env
