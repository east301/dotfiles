#!/bin/sh

# sets up homeshick
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

# adds my customizations
homeshick clone east301/dotfiles
homeshick cd dotfiles
git submodule update --init --recursive

# apply customizations manually..
echo
echo "[INFO] Run the following command manually to apply changes"
echo "[INFO]  $ source $HOME/.homesick/repos/homeshick/homeshick.sh && homeshick symlink"
