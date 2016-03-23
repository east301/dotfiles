###
### .zshrc
###

source $HOME/.zplug/zplug


# ================================================================================
# oh-my-zsh
# ================================================================================

zplug "themes/", from:oh-my-zsh

plugins=(
    "bower" "git" "common-aliases" "django" "docker-compose" "docker" "extract" "git"
    "gradle" "mosh" "mvn" "npm" "nyan" "osx" "pip" "python" "rsync" "ruby" "screen"
    "sudo" "systemadmin" "systemd" "vagrant" "virtualenv"
)

for plugin in $plugins; do
    zplug "plugins/$plugin", from:oh-my-zsh
done


# ================================================================================
# custom plugins etc.
# ================================================================================

zplug "~/.homesick/repos/dotfiles/vendor", from:local, as:command, of:"git/diff-highlight"

zplug "east301/fe256259eeddb6da1643", from:gist, of:use-peco-to-search-command-history.sh


# ================================================================================
# activates zplug
# ================================================================================

if ! zplug check; then
    zplug install
fi

zplug load
