# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# APPLE, Y U PUT /usr/bin B4 /usr/local/bin?!
PATH="/usr/local/bin:$(path_remove /usr/local/bin)"
export PATH

# Make 'less' more.
[[ "$(type -P lesspipe.sh)" ]] && eval "$(lesspipe.sh)"

# Start ScreenSaver. This will lock the screen if locking is enabled.
alias ss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Use homebrew's completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Fortran
export FC='~/Homebrew/bin/gfortran'
export F77='~/Homebrew/bin/gfortran'
export F90='~/Homebrew/bin/gfortran'

# CPAN: http://askubuntu.com/questions/209615/change-cpan-install-directory
export PERL5LIB=/Users/mbauman/.cpan/perl5:/Users/mbauman/.cpan/perl5/darwin-thread-multi-2level

function blockads () {
  sudo cp /etc/hosts.block /etc/hosts
  sudo dscacheutil -flushcache
}

function unblockads () {
  sudo cp /etc/hosts.noblock /etc/hosts
  sudo dscacheutil -flushcache
}

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
