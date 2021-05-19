#/bin/sh

# List repo working set
REPOS="..."

for repo in $REPOS; do
  read -p "Pull latest from $repo? [y,n] " -n 1 -r
  echo  # (optional) move to a new line
  case "$REPLY" in 
    y|Y )
      cd $HOME/repos/$repo
      git pull
      ;;
    * )
      # nope
      ;;
  esac
done
