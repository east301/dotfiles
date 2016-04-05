###
### .zshrc
###

source $HOME/.zplug/zplug
PATH=~/local/bin:$PATH

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

zplug "~/.homesick/repos/dotfiles/vendor", from:local, as:command, of:"git/diff-highlight"

zplug "S1cK94/minimal", as:plugin, do:"chmod +x *.zsh*", of:"*.zsh*"

zplug "east301/7fab0e98698e9129e916",             from:gist, of:add-opt-local-bin-to-path.sh
zplug "east301/e21c6e865b98df2c4fc1",             from:gist, of:activate-direnv.sh
zplug "east301/fe256259eeddb6da1643",             from:gist, of:use-peco-to-search-command-history.sh
zplug "east301/8d0a962d79aa871ac0ba9047d5f208fd", from:gist, of:make-python-package-directory.sh


# ================================================================================
# activates zplug
# ================================================================================

if ! zplug check; then
    zplug install
fi

zplug load
