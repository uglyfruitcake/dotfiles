rm -rf ~/dotfiles
git clone https://github.com/meatballs/dotfiles.git --recursive ~/dotfiles

rm -f ~/.local_settings.zsh
cp ~/dotfiles/local_settings.zsh.example ~/.local_settings.zsh

rm -f ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc