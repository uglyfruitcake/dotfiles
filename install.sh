rm -rf ~/dotfiles
git clone https://github.com/theref/dotfiles.git --recursive ~/dotfiles

rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

rm -f ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm -f ~/.tmuxinator
ln -s ~/dotfiles/tmuxinator/tmuxinator.zsh ~/.tmuxinator