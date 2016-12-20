# History settings

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
export HISTCONTROL="ignorespace"
# Give history timestamps.
export HISTTIMEFORMAT="[%F %T] "
# Lots o' history.
export HISTSIZE=1000000
export HISTFILESIZE=1000000

# Easily re-execute the last history command.
alias r="fc -s"
