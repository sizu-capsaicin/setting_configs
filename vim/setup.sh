# install molokai
mkdir -p $HOME/.vim/colors
cd $HOME/.vim
git clone https://github.com/tomasr/molokai
mv $HOME/.vim/molokai/colors/molokai.vim $HOME/.vim/colors/

# link to setting_configs/vim/.vimrc
cd $HOME
rm $HOME/.vimrc
ln -s $HOME/setting_configs/vim/.vimrc
