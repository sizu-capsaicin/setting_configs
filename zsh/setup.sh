# install git-prompt & git-completion
cd $HOME
mkdir $HOME/.zsh
cd $HOME/.zsh

curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
cd $HOME

rm .zshrc
ln -s $HOME/setting_configs/zsh/.zshrc
source .zshrc
