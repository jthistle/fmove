# fmove - follow command execution to its destination
#
# How to use this:
#
# 1. Copy the function below to your ~/.bashrc
# 2. To 'follow' a command to its final argument, just prepend it with `f`, e.g.:
#
#        f mv foo.txt ./bar
#
#    (This isn't limited to `mv`. It works with `cp`, `rsync`, and any other command which
#    has a destination as its final argument.)
#
# 3. You will have moved foo.txt to ./bar and will also be cd'd into ./bar


f() {
	"$@" && cd "${@: -1}" 
}

