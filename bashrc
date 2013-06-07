# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Source local (outside of .dotfiles) definitions
for f in ~/.bash/*; do
        source $f;
done

# Include all files in bash/
#
# thanks https://github.com/brianarn/dotfiles/blob/master/bashrc
for f in ~/.dotfiles/bash/*; do
	source $f;
done

