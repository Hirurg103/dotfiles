function workon() {
  echo "export CURRENT_PROJECT=$1" > ~/.current_project
  cd "$HOME/Documents/work/$1"
}
alias goto="workon"

function grepgem() {
  ag $2 `bundle show $1`
}

function grepgems() {
  ag $1 $GEM_HOME"/gems"
}

function backupit() {
  local date=$(date "+%Y_%m_%d")
  local time=$(date "+%H_%M_%S")
  mkdir -p ~/backups/"$date" >/dev/null 2>&1
  mysqldump -c -e --default-character-set=utf8 --single-transaction --add-drop-database -u$2 $1 | gzip > ~/backups/"$date"/"$2"_dump_"$time".gz
}

function dump() {
  time=$(date '+%H_%M_%S');
  date=$(date '+%Y_%m_%d');
  database=$1;

  dumps_dir="$HOME/dumps";
  mkdir -p "$dumps_dir/$date";

  dumpfile=$dumps_dir/$date/$time"_"$database"_dump".psql.gz
  pg_dump $database -W -U ontheway --no-privileges --clean --exclude-table=schema_migrations | gzip > $dumpfile;

  echo $dumpfile;
}

function start_android_emulator() {
  $ANDROID_HOME/emulator/emulator -avd Android_Accelerated_Nougat &>/dev/null &;
}
