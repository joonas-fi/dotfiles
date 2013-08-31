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

