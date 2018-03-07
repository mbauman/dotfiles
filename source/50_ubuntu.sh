# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

PATH="~/bin:$(path_remove ~/bin)"
export PATH

# Package management
alias search="apt-cache search"

# Make 'less' more.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
