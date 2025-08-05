#export SCIPY_PIL_IMAGE_VIEWER=display

# Usage: dip [containerid]

function dip() {
  if [ -z $1 ]; then
    docker ps -a --format "{{.ID}}" | while read -r line ; do
      echo $line $(docker inspect --format "{{ .Name }} {{ .NetworkSettings.Networks.bridge.IPAddress }}" $line | sed 's/\///'):$(docker port "$line" | grep -o "0.0.0.0:.*" | cut -f2 -d:)
    done
  else
    echo $(docker inspect --format "{{.ID }} {{ .Name }} {{ .NetworkSettings.Networks.bridge.IPAddress }}" $1 | sed 's/\///'):$(docker port "$1" | grep -o "0.0.0.0:.*" | cut -f2 -d:)
  fi
}

function open() {
    xdg-open "$1" >/dev/null 2>&1
}

if [[ -f ~/.git-prompt.sh ]]; then
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUPSTREAM='verbose'
    source ~/.git-prompt.sh
    git_ps1='$(__git_ps1 " (%s)")'
fi

_prompt_colors=(0 1 2 3 4 5 6)
_prompt_styles=(0 1 3 4)
function _hashcolor() {
    hash=$(echo -n "$1" | md5sum)
    color=$(( 0x${hash:0:8} % ${#_prompt_colors[@]} ))
    style=$(( 0x${hash:8:8} % ${#_prompt_styles[@]} ))
    echo -E "\e[${_prompt_styles[style]};3${_prompt_colors[color]}m"
}

color='$(echo -e $(_hashcolor "$(whoami)@$(hostname):$(pwd -P)"))'
reset='\[\e[0m\]'
export PS1="▶▶▶ ${color}\u@\h${reset}:${color}\W${reset}${git_ps1}\n[\j]\\$ "
alias config='/usr/bin/git --git-dir=/home/bmbroom/.cfg/.git/ --work-tree=/home/bmbroom'
alias lola='/usr/bin/git log --graph --decorate --pretty=oneline --abbrev-commit --all'
