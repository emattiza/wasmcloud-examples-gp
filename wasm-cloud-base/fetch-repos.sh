#!/bin/bash
EXAMPLE_DIR="./echo"
EXAMPLE_RQSTD="actor/echo"

## Some Logging
exec 3>&2 # logging stream (file descriptor 3) defaults to STDERR
verbosity=5 # default to show warnings
silent_lvl=0
crt_lvl=1
err_lvl=2
wrn_lvl=3
inf_lvl=4
dbg_lvl=5
notify() { log $silent_lvl "NOTE: $1"; } # Always prints
critical() { log $crt_lvl "CRITICAL: $1"; }
error() { log $err_lvl "ERROR: $1"; }
warn() { log $wrn_lvl "WARNING: $1"; }
inf() { log $inf_lvl "INFO: $1"; } # "info" is already a command
debug() { log $dbg_lvl "DEBUG: $1"; }
log() {
    if [ $verbosity -ge $1 ]; then
        datestring=`date -Ins`
        # Expand escaped characters, wrap at 70 chars, indent wrapped lines
        echo -e "[$datestring] $2" | fold -s | sed '2~1s/^/  /' >&3
    fi
}
## END logging utils
WASMCLOUD_EXAMPLES_URL="https://github.com/wasmcloud/examples/trunk"
remove_example () {
    rm -rf "$1"
}
fetch_example () {
    svn export "$WASMCLOUD_EXAMPLES_URL"/"$1" $2
}
get_examples () {
    svn ls "$WASMCLOUD_EXAMPLES_URL"/$1
}
init_example () {
    cd "$1"
    # Do startup work here
    cp ../wasm-cloud-base/actor.mk ./
    sed -i 's#../../build/makefiles/actor.mk#./actor.mk#gi'
    make
    cd -
}


# To pull an example repo, call the following with the name of the repo
# fetch_example echo ./echo
# To remove an example repo, call the following with the directory location of the repo
# remove_example echo
# To get a list of example repos, call the following
# get_examples [dir]
# get_examples actor
# An example set of steps to pull an example and run
debug "Get examples under $EXAMPLE_RQSTD directory"
get_examples "$EXAMPLE_RQSTD"
debug "fetch example echo from $EXAMPLE_RQSTD into $EXAMPLE_DIR"
fetch_example "$EXAMPLE_RQSTD" "$EXAMPLE_DIR"
debug "bootstrap example"
init_example "$EXAMPLE_DIR"
debug "remove example from repo"
# remove_example "$EXAMPLE_DIR"
debug "complete!"