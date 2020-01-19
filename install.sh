echo 'And awaaaaay we go!'

cd ..
mv dotfiles ~/Downloads
cd ~/Downloads/dotfiles

echo 'VIM install...'
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  mv vimrc ~/.vimrc

echo "Running ZSH installation..."
  zsh zsh_install.sh

echo "You're all clear to start working!"
