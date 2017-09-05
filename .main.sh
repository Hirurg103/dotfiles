# require this file in .zshrc or .bashrc

source ~/.bash_aliases
source ~/.bash_helpers

[[ -f ~/.current_project ]] && source ~/.current_project
cd ~/work/$CURRENT_PROJECT
