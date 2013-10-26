# You can install these dotfiles from practically any Unix variant by running:
#
# 	$ curl -L http://go.xs.fi/dotfiles | sh
# 
# Security tip:
# 	Just use curl alone first (before "| sh") to make
#       sure downloaded script is a-ok before running it.

# See if dotfiles is already installed
if [ -f ~/.dotfiles/.installed_flag ]; then
	echo "dotfiles already installed"
	exit 1
fi

# User's .bashrc exists => make backup
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.old
        echo "Backed up existing ~/.bashrc to ~/.bashrc.old"
fi

# symlink bashrc from dotfiles to home directory
ln -s ~/.dotfiles/bashrc ~/.bashrc

# create ~/.bash directory for private bash scripts
mkdir -p ~/.bash

# create an empty_dir file in it so directory is not empty, because .bashrc does
# "source ~/.bash/*", which fails if directory empty
# 
# (cannot be a hidden file, since * does not expand hidden files)
touch ~/.bash/empty_dir

# mark dotfiles as installed
touch ~/.dotfiles/.installed_flag

echo "dotfiles installed"

