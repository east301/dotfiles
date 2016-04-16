###
### .zshrc
###

# ================================================================================
# bootstrap
# ================================================================================

source $HOME/.zplug/zplug
source $HOME/.homesick/repos/dotfiles/vendor/east301/bootstrap.sh

add_to_path /opt/local/bin
add_to_path $HOME/local/bin


# ================================================================================
# oh-my-zsh
# ================================================================================

plugins=(
    "git" "common-aliases" "django" "docker-compose" "docker" "extract" "git"
    "npm" "nyan" "osx" "pip" "python" "rsync" "ruby" "screen" "vagrant"
)

for plugin in $plugins; do
    zplug "plugins/$plugin", from:oh-my-zsh
done


# ================================================================================
# custom plugins etc.
# ================================================================================

zplug "S1cK94/minimal", as:plugin, do:"chmod +x *.zsh*", of:"*.zsh*"

zplug_local_command "git/diff-highlight"

zplug_local_plugin "east301/ssh-config.sh", "[ -f ~/.ssh/Makefile ]"
zplug_local_plugin "east301/macports.sh",   "[[ $OSTYPE == *darwin* ]]"
zplug_local_plugin "east301/direnv.sh",     "which direnv"
zplug_local_plugin "east301/peco.sh",       "which peco"
zplug_local_plugin "east301/python.sh",     "which python || which python2 || which python3"


# ================================================================================
# activates zplug
# ================================================================================

if ! zplug check; then
    zplug install
fi

zplug load


# ================================================================================
# loads local settings if exists
# ================================================================================

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi
