# Before running this file, do the following:
# To make this file executable if it isn't already: chmod +x install.sh
# Syntax to run this file: ./install.sh <home_directory>
# Example to run this file: ./install.sh /Users/srinivasulu/
# Location of the dotfiles folder: /Users/srinivasulu/Code/Projects/dotfiles

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/Code/Projects/dotfiles

# list of files/folders to symlink in ${homedir} - space separated values
files="zshrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
