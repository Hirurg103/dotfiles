function goto() {
  echo "export CURRENT_PROJECT=$1" > ~/.current_project
  cd "$HOME/work/$1"
}

function grepgem() {
  ag $2 `bundle show $1`
}

function grepgems() {
  ag $1 $(rvm gemdir)"/gems"
}

backupit() {
    local date=$(date "+%Y_%m_%d")
    local time=$(date "+%H_%M_%S")
    mkdir -p ~/backups/"$date" >/dev/null 2>&1
    mysqldump -c -e --default-character-set=utf8 --single-transaction --add-drop-database -u$2 $1 | gzip > ~/backups/"$date"/"$2"_dump_"$time".gz
}
