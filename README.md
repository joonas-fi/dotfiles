# joonas.fi's dotfiles

My set of dotfiles.

## Installation

### Shortest all-in-one command

	curl https://bitbucket.org/joonas_fi/dotfiles/raw/tip/bootstrap.sh | bash

	(IMPORTANT: replace "bash" with "echo" first to make sure the commands are the same as in the All-in-one command)

### Pasteable all-in-one command

	hg clone https://joonas_fi@bitbucket.org/joonas_fi/dotfiles ~/.dotfiles && cd ~/.dotfiles && ./install.sh && if [[ $OLDPWD ]]; then cd $OLDPWD; fi

### Or the same broken down in chunks

	# Clone the repo
	hg clone https://joonas_fi@bitbucket.org/joonas_fi/dotfiles ~/.dotfiles
	cd ~/.dotfiles

	# Set up symlinks
	./install.sh

	# Go back to where I was
	if [[ $OLDPWD ]]; then cd $OLDPWD; fi

## Credits

Thanks to Brian for inspiration: 

https://github.com/brianarn/dotfiles/
- idea of using dotfiles as a repo
- easily copy-pasteable installation step

