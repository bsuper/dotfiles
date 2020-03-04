# Dotfiles

Colourful & robust OS X and Linux configuration files and utilities for web development. Forked from [Paul Miller's dotfiles](https://dotfiles.github.io/) and modified for ease of use. Quickly bootstrap your system with the goods you need to succeed.

It can be run multiple times on the same machine safely. It installs, upgrades, or skips packages based on what is already installed on the machine.

### Features

1. `zsh` instead of `bash`. The main benefit is path autocompletion.
2. Uses `brew cask` to install many apps. This allows third party apps to be placed in a single folder separate from the main applications folder. A symlink is used add itself to the `/Applications` folder.

### Quick Installation Instructions

```
cd ~/Downloads && git clone https://github.com/bsuper/dotfiles.git
cd dotfiles
./install.sh

echo "zsh" > ~/.bashrc # or add it to ~/.bashrc at the very bottom if it's already exists

# Open VIM and type :PlugInstall
mv ~/.vim/plugged/vim-colors-solarized/colors ~/.vim/

# In the terminal settings change the font to one of the fonts that says "... for Powerline"

```

### Installation

Note: Since this script is poorly written, files will be created, modified, and deleted in `~/Downloads`. But, you can clone this repo anywhere and this repo will automatically transfer its contents to `~/Downloads` before anything else happens.

```
git clone https://github.com/bsuper/dotfiles
cd dotfiles
./install.sh
```

Now, we have to install the VIM plugins that I use. I use a VIM plugin manager called VimPlug. You must open VIM to install the VIM packages. When you first open VIM, it will complain about the solarized colorscheme missing. This will go away once you install all the VIM plugins and add the solarized colorscheme to the right place.

```
vim

# Within VIM
:source ~/.vim/autoload/plug.vim
:PlugInstall
:q
# :q exits VIM

# This moves the colors folder from the vim-colors-solarized plugin to where vim loads third party colorschemes.
mv ~/.vim/plugged/vim-colors-solarized/colors ~/.vim
# If you don't want solarized as your colorscheme for vim, delete or comment out vimrc:15 -> colorscheme solarized 
```

Finally, you'll notice that there's weird symbols when using VIM. This is because the default font in iTerm is not compatible. To make it compatible, go to iTerm's preferences and changed the font via Profile > Text to a font that has Powerline in its name.
