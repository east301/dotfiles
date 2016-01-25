#!/bin/sh

# sets up homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

# adds my customizations
homeshick clone east301/dotfiles
homeshick symlink
