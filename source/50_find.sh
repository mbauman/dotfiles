# Find a file in the current dir; case insensitive, globbed (Fast Find)
function ff () {
  find -x . -iname "*${*}*" -print
}
# Find an exact filename in the current dir; case sensitive (Fast Find Exact)
function ffe () {
  find -x . -name "${*}" -print
}
# Find a file in a list of dirs; case insensitive, globbed
function findin () {
  pathlist="$1"
  shift
  while [[ -n "$2" ]]
  do
    pathlist="-f $1 $pathlist"
    shift
  done
  find -x $pathlist -iname "*${1}*" -print
}

# search for an alias/function
function forget () {
  answer=`grep -R -iC1 $1 ~/.dotfiles`
  echo "${answer:-Nothing appropriate}"
}
alias forgot="forget" # I'm an idiot at times
