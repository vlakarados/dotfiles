# dotfiles directory
dir=~/dotfiles

# list of files/folders to symlink in homedir
files="bashrc vimrc vim tmux.conf gitconfig"

##########


if [[ -z "$1" ]]; then
	echo "--[ Dotfiles ]--"
	echo " "
	echo "	symlinks"
	echo "		make"
	echo "		remove"
	exit 0
fi

if [ $1 = "symlinks" ]; then
	cd $dir
	if [[ -z "$2" ]]; then
		echo "Subcommand not specified, use one of the following:"
		echo " - make"
		echo " - remove"
		exit 0
	fi

	if [ $2 = "make" ]; then
		echo -n "Changing to the $dir directory ..."
		cd $dir
		echo "done"

		for file in $files; do
		    echo "Creating symlink to $file in home directory."
		    ln -s $dir/$file ~/.$file
		done
	fi

	if [ $2 = "remove" ]; then
		for file in $files; do
		    echo "Removing symlink $file"
		    rm ~/.$file
		done
	fi
fi
