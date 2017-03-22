###
### .zshrc
###

# ================================================================================
# bootstrap
# ================================================================================

source $HOME/.zplug/init.zsh
source $HOME/.homesick/repos/dotfiles/vendor/east301/bootstrap.sh

add_to_path /opt/local/bin
add_to_path $HOME/local/bin


# ================================================================================
# oh-my-zsh
# ================================================================================

zplug_omz_plugin "common-aliases"
zplug_omz_plugin "docker-compose", "which docker-compose"
zplug_omz_plugin "docker",         "which docker"
zplug_omz_plugin "extract"
zplug_omz_plugin "git"
zplug_omz_plugin "npm",            "which npm"
zplug_omz_plugin "nyan"
zplug_omz_plugin "osx",            "[[ $OSTYPE == *darwin* ]]"
zplug_omz_plugin "pip"
zplug_omz_plugin "python"
zplug_omz_plugin "rsync"
zplug_omz_plugin "ruby",           "which ruby"
zplug_omz_plugin "screen",         "which screen"
zplug_omz_plugin "vagrant",        "which vagrant"


# ================================================================================
# custom plugins etc.
# ================================================================================

zplug "S1cK94/minimal", as:plugin, hook-build:"chmod +x *.zsh*", use:"*.zsh*"

zplug_local_command "git/diff-highlight"

zplug_local_plugin "east301/rm.sh"
zplug_local_plugin "east301/ssh-config.sh", "[ -f ~/.ssh/Makefile ]"
zplug_local_plugin "east301/macports.sh",   "[[ $OSTYPE == *darwin* ]]"
zplug_local_plugin "east301/git.sh"
zplug_local_plugin "east301/direnv.sh",     "which direnv"
zplug_local_plugin "east301/peco.sh",       "which peco"
zplug_local_plugin "east301/python.sh",     "which python || which python2 || which python3"


# ================================================================================
# loads local settings if exists
# ================================================================================

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi


# ================================================================================
# activates zplug
# ================================================================================

if ! zplug check; then
    zplug install
fi

zplug load
