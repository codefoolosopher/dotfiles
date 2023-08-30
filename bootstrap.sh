#!/bin/bash
set -e
set -o pipefail

cd "$(dirname "{BASH_SOURCE}")";

function doIt()
{
	rsync --exclude ".git/" --exclude "bootstrap.sh" \
		--exclude "README.md" -avh --no-perms . ~;
	source ~/.bashrc;

	# Install Vundle First
	rm -rf ~/.vim/bundle
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	# Install Vundle pulgin
	vim +PluginInstall +qall

	cp -r ./awesome-vim-colorschemes/color/* ~/.vim/color
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;

else
	read -p "This may overwrite existing files in your home dir. Are  you sure?
	(y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	    doIt;
	fi;
fi;
unset doIt;

