# require this file in .zshrc or .bashrc

source ~/.bash_aliases
source ~/.bash_helpers

[[ -f ~/.current_project ]] && source ~/.current_project
$CURRENT_PROJECT && cd ~/work/$CURRENT_PROJECT
