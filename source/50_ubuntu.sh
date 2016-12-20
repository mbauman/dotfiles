# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

# Package management
alias search="apt-cache search"

# Make 'less' more.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
