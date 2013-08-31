# You can install these dotfiles from practically any Unix variant by running:
#
# $ curl -L http://go.xs.fi/dotfiles | sh

if [ -f ~/.bashrc ]; then
        echo "~/.bashrc already exists. Either:"
        echo "a) dotfiles already installed or"
        echo "b) there may be a stock .bashrc and you should mv ~/.bashrc ~/.bashrc.old"
        exit 1 # error code
fi

ln -s ~/.dotfiles/bashrc ~/.bashrc

# create ~/.bash directory
mkdir -p ~/.bash

# create an empty_dir file in it so directory is not empty, because .bashrc has
# "source ~/.bash/*", which fails if directory empty
# 
# (cannot be a hidden file, since * does not expand hidden files)
touch ~/.bash/empty_dir

