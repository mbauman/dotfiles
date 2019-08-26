# OSX-only stuff. Abort if not OSX.
is_osx || return 1

PATH="~/bin:$PATH"
export PATH

# Make 'less' more.
[[ "$(type -P lesspipe.sh)" ]] && eval "$(lesspipe.sh)"

# Use homebrew's completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Fortran
export FC='~/Homebrew/bin/gfortran'
export F77='~/Homebrew/bin/gfortran'
export F90='~/Homebrew/bin/gfortran'

function blockads () {
  sudo cp /etc/hosts.block /etc/hosts
  sudo dscacheutil -flushcache
}

function unblockads () {
  sudo cp /etc/hosts.noblock /etc/hosts
  sudo dscacheutil -flushcache
}

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

true
