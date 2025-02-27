# My stuff

function parse_git_dirty {
  output=$(git status --porcelain 2> /dev/null)
  echo "$output" | grep -q -e "^ *D" && echo -n "-"
  echo "$output" | grep -q -e "^ *M" -e "^ *R" && echo -n "*"
  echo "$output" | grep -q -e "^ *A" && echo -n "+"
}
function parse_git_stash {
  [[ $(git stash list 2> /dev/null | tail -n1) != "" ]] && echo "^"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty)$(parse_git_stash))/"
}

# export PS1='${debian_chroot:+($debian_chroot)}\u:\w$(parse_git_branch)\$ '
export PS1='\[\e]0;\u: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u:\[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]$(parse_git_branch)\$ '


# Docker stuff
alias dstop="docker ps -q | xargs docker stop"
alias dc='docker-compose'  # shaddows an old-school calculator program
alias dx='docker exec -it `docker ps -q  | head -n 1` bash'
alias dps="docker ps -q | head -n1"
alias dx='docker exec -it $(dps) /bin/bash'
alias dimg="docker images | head -n 2 | tail -n 1 | awk '{print \$3}'"
alias drm='docker rm `docker ps -a -q`'
alias dsp='docker system prune --volumes'


# git stuff
alias cv='git commit -v'
alias cav='git commit -a -v'
alias gs='git status'
alias gd='git diff'
alias gl='git pull --ff-only'
alias gp='git push'
alias gpp='GIT_SSH_COMMAND="ssh -i ~/.ssh/id_personal_github" git push'
alias com='git checkout main'
alias gb='git rev-parse --abbrev-ref HEAD' # current branch
alias upush='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias up='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias upf='git push -u origin `git rev-parse --abbrev-ref HEAD` -f'
alias glog='git log --graph --color --decorate'
alias glogo='git log --graph --color --decorate --oneline'
alias glof="git log --color --all --date-order --decorate --dirstat=lines,cumulative --stat | sed 's/\([0-9] file[s]\? .*)$\)/\1\n_______\n-------/g' | less -R"
alias rmb='git pull; git remote prune origin && git prune && git branch --no-column | grep -v -e "main" -e "*"| xargs -L 1 git branch -d'
alias rmbD='git pull; git remote prune origin && git prune && git branch --no-column | grep -v -e "main" -e "*"| xargs -L 1 git branch -D'
alias gitres='git restore `git diff --name-only`'
alias remas='git fetch origin && git rebase origin/main -i'


# Development stuff
export CHROME_BIN=/usr/lib/chromium-browser/chromium-browser
export EDITOR=vim
alias pe='pipenv'
alias b='black -l 120'
alias ball="find ./ -name '*.py' | xargs black -l 120"
alias uj='echo -n $1 > /home/sergio.martins/.config/autokey/data/Day-to-day/jcode.txt'
alias grunt='node_modules/grunt/bin/grunt'
alias yarn='node_modules/yarn/bin/yarn'
alias subl='guake --toggle-visibility && /usr/bin/subl'


# Net stuff
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias ethip='ip a | grep -e enp -e enx | awk "/inet /{print $2}" | cut -d/ -f1'
alias ips='ip a | grep "inet " | grep -Pe "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias refi='active=`n c show --active | awk "/wifi/{print \\$1}"`; n c down $active; n c up $active'
alias wip='watch ip a show wlp2s0'
alias pt='ping tick'  # 128.100.100.128 tick
alias p1='ping 1.1.1.1'
alias n='nmcli'
alias uv='nmcli c up vpn'
alias dv='nmcli c down vpn'


# Misc stuff
alias o='xdg-open'
alias vash='vim ~/.bashrc && source ~/.bashrc'
alias b64='base64 -w 0'
alias kv='killall -9 vlc'
alias ks='killall -9 steam'
alias is_unifi_running='sudo systemctl status unifi' # Ubiquiti ubiquiti wireless WiFi wifi
alias merge='ffmpeg -i DASH_vid.mp4 -i DASH_audio.mp4 -c:v copy -c:a aac output.mp4 && vlc output.mp4' # -itsoffset 0.250
alias newmerge='ffmpeg -i HLS_*.ts -i HLS_AUDIO* -c:a aac -c:v h264 output.mp4 && vlc output.mp4'
alias merge3='pushd /tmp/ && ffmpeg -i v.mp4 -i a.mp4 -c:v copy -c:a aac output.mp4 && vlc output.mp4'
alias remove_metadata_from_image='exiftool -all='  # ie: remove_metadata_from_image my_images*.jpg
alias rm_nodemodules='find . -maxdepth 2 -name "node_modules" -type d -exec rm -rf "{}" \;'
alias restart-gnome-shell="busctl --user call org.gnome.Shell /org/gnome/Shell org.gnome.Shell Eval s 'Meta.restart(    \"Restarting…\")'"


# Gaming
usage: `proton run ./game.exe`
alias proton='STEAM_COMPAT_CLIENT_INSTALL_PATH=$(pwd) STEAM_COMPAT_DATA_PATH=$(pwd) ~/.local/share/Steam/steamapps/common/Proton\ -\ Experimental/proton'
alias gputemps='watch -n 0.5 nvidia-smi'
alias updis='sudo dpkg -i /tmp/discord*.deb'
alias rgb='flatpak run org.openrgb.OpenRGB'
