# require this file in .zshrc or .bashrc

source ~/.bash_aliases.sh
source ~/.bash_helpers.sh

[[ -f ~/.current_project ]] && source ~/.current_project
[[ $CURRENT_PROJECT ]] && cd ~/work/$CURRENT_PROJECT
