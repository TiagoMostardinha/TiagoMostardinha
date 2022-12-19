function copydir {
  pwd | tr -d "\r\n" | xclip -sel clip
}

function copyfile {
  [[ "$#" != 1 ]] && return 1
  local file_to_copy=$1
  cat $file_to_copy | xclip -sel clip
}

function hs
{
    history | grep $*
}

function cdir
{
  paths=`echo "UA Repository somm22-so-p3g2 modular_framework_PECI" | tr " " "\n"`
  selected=`printf "$paths" | fzf`

  case $selected in
    UA) cd "/home/tiago/DiscoD/UA";;
    Repository) cd "/home/tiago/DiscoD/repository";;
    modular_framework_PECI) cd "/home/tiago/DiscoD/repository/modular_framework_PECI";;
    somm22-so-p3g2) cd "/home/tiago/DiscoD/repository/somm22-so-p3g2";;
    *) echo "Invalid selection";;
  esac
}
