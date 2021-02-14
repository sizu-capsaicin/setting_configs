# install git-prompt & git-completion
cd ~
mkdir ~/.zsh
cd ~/.zsh

curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
cd ~

rm .zshrc
ln -s ~/setting_configs/zsh/.zshrc
source .zshrc
