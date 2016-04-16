#!/bin/sh

# sets up homeshick
homesick_dir=$HOME/.homesick/repos/homeshick

if [ ! -d $homesick_dir ]; then
    git clone https://github.com/andsens/homeshick.git $homesick_dir
fi
source $homesick_dir/homeshick.sh

# adds my customizations
homeshick cd dotfiles >/dev/null 2>&1
if [ $? -eq 0 ]; then
    homeshick pull dotfiles
    git submodule update --recursive
else
    homeshick clone east301/dotfiles
    homeshick cd dotfiles
    git submodule update --init --recursive
fi

# apply customizations manually..
echo
echo "[INFO] Run the following command manually to apply changes"
echo "[INFO]  $ source $HOME/.homesick/repos/homeshick/homeshick.sh && homeshick link && zcompile $HOME/.zshrc"
