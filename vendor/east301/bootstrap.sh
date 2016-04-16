###
### Bootstrap helper
###

# ================================================================================
# path
# ================================================================================

# http://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
function add_to_path () {
    if [ -d "$1" ] && [[ "$PATH" =~ (^|:)"$1"(:|$) ]]; then
        return 0
    else
        export PATH=$1:$PATH
    fi
}


# ================================================================================
# zplug
# ================================================================================

function zplug_omz_plugin () {
    zplug "plugins/$1", from:oh-my-zsh, if:"${2:-true}"
}

function zplug_local_plugin () {
    zplug "~/.homesick/repos/dotfiles/vendor", from:local, as:plugin, of:$1, if:"${2:-true}"
}

function zplug_local_command () {
    zplug "~/.homesick/repos/dotfiles/vendor", from:local, as:command, of:$1, if:"${2:-true}"
}
