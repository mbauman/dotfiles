# Editing

if [[ ! "$SSH_TTY" ]] && is_osx; then
    export LESSEDIT='mate %f:%lm'       #Edit in TextMate from LESS
    export EDITOR='mate -w'             #Use TextMate to edit stuff
    export JULIA_EDITOR='mate'          #Use TextMate to edit stuff
else
    export EDITOR='emacs'
    export JULIA_EDITOR='rmate'
fi
