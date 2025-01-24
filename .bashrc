
export PATH=$PATH:$HOME/.local/bin
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

# adding flags
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'
alias pg="pgrep -f"
alias pk="pkill -9 -f"

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# 1. arch or manjaro OS commands
alias pi='pacman -S --noconfirm'
alias pu='pacman -Syyu --noconfirm'
alias pr='pacman -Rscn --noconfirm'
alias pq='pacman -Qs --noconfirm'
alias yi="yay -S"
alias yu="yay -Syyu"
alias yr="yay -Rscn"
alias yq="yay -Qs"

# pacman and yay
alias yaysua='yay -Sua --noconfirm'               # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'               # update standard pkgs and AUR pkgs (yay)
alias parsua='paru -Sua --noconfirm'              # update only AUR pkgs (paru)
alias parsyu='paru -Syu --noconfirm'              # update standard pkgs and AUR pkgs (paru)
alias unlock='sudo rm /var/lib/pacman/db.lck'     # remove pacman lock
alias pcleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# network
alias wifi1='iwlist scan | grep "ESSID:"'
alias wifi='nmcli device wifi list | head -10'
alias shouji='nmcli device wifi connect "HONOR 30" password "12345678"'
alias kuandai='nmcli device wifi connect "sx001" password "Mm1214875764."'
alias duankaiwifi='nmcli device disconnect wlp3s0'

# 2. custom: dir commands
alias co='cd /usr1/codehub'
alias do='cd ~/Downloads'
alias m="cd ~"
alias fonts='fc-list | grep' # 查看已安装字体
# ===========================
alias rm='rm -rf'
alias ln='ln -i'
alias cp1='cp -arv'
alias cp='rsync -avPh'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias ..='cd ../../'
alias ...='cd ../../..'
alias l='lsd -d .* --color=auto'
alias ll='lsd -laF --color=auto'
alias ls='lsd --color=auto'
alias f='shfmt -d -i 4 -ci -w -bn -sr'
# Changing "ls" to "exa"
#alias ls='exa -al --color=always --group-directories-first' # my preferred listing
#alias la='exa -a --color=always --group-directories-first'  # all files and dirs
#alias ll='exa -l --color=always --group-directories-first'  # long format
#alias lt='exa -aT --color=always --group-directories-first' # tree listing
#alias l.='exa -a | egrep "^\."'

alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

# 2.1 custom cat commands
alias nocomment='grep -Ev "^(#|$)"'
alias tf='tail -f '
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'

# 2.3 custom time commands
alias now='date "+%Y-%m-%d %H:%M:%S.%s"'
alias timestamp='now; echo s: $(date +"%s"); echo ms: $(echo `expr \`date +%s%N\` / 1000000`)'
alias time_sync='sudo timedatectl set-ntp true'
# 2.4 net commands
alias curl='curl -O'

# 2.5 memory status commands
alias du='du -h'
alias du1='du -h -d 1'
alias du2='du -h -d 2'
alias du3='du -h -d 3'
alias meminfo='free -h -l -t'
alias cpuinfo='lscpu'

# 2.6 ps commands
alias ports='netstat -tulanp'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias psg='ps -ef | grep '
alias psme='ps -ef | grep $USER --color=always '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias dinfo='df -h; free -h -l -t; netstat -tulanp'
alias h='history'
alias j='jobs -l'

# 3. custom tools
alias vi=nvim
alias v=nvim
alias ra='ranger'
alias lg='lazygit'

# 4. git commands
alias gr='git rm -rf'
# alias gp='git push origin master'
alias gp='git push'
alias ga='git add'
alias gs='git status'
alias gll='git pull'
alias gc='git commit -m'
alias gb='git branch -a'
alias gd='git diff'
alias glp='git log -p'
alias checkout='git checkout'
alias tag='git tag'
alias newtag='git tag -a'

# Play audio files in current dir by type
alias playwav='deadbeef *.wav'
alias playogg='deadbeef *.ogg'
alias playmp3='deadbeef *.mp3'

# Play video files in current dir by type
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# yt-dlp
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-m4a="yt-dlp --extract-audio --audio-format m4a "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias yta-opus="yt-dlp --extract-audio --audio-format opus "
alias yta-vorbis="yt-dlp --extract-audio --audio-format vorbis "
alias yta-wav="yt-dlp --extract-audio --audio-format wav "
alias ytv-best="yt-dlp -f bestvideo+bestaudio "

# switch between shells
# I do not recommend switching default SHELL from bash.
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"
alias sl='sudo sublime'
alias typora='sudo typora'
# termbin
alias tb="nc termbin.com 9999"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Unlock LBRY tips
alias tips='lbrynet txo spend --type=support --is_not_my_input --blocking'

### DTOS ###
# Copy/paste all content of /etc/dtos over to home folder. A backup of config is created. (Be careful running this!)
alias dtoscopy='[ -d ~/.config ] || mkdir ~/.config && cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/dtos/* ~'
# Backup contents of /etc/dtos to a backup folder in $HOME.
alias dtosbackup='cp -Rf /etc/dtos ~/dtos-backup-$(date +%Y.%m.%d-%H.%M.%S)'

### SET MANPAGER
### Uncomment only one of these!

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### "nvim" as manpager
# export MANPAGER="nvim -c 'set ft=man' -"

### SET VI MODE ###
# Comment this line out to enable default emacs-like bindings
# bindkey -v

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PATH
[ -d "$HOME/.bin" ] && PATH="$HOME/.bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/Applications" ] && PATH="$HOME/Applications:$PATH"
[ -d "$HOME/.cargo/bin" ] && PATH="$HOME/.cargo/bin:$PATH"
### SETTING OTHER ENVIRONMENT VARIABLES
# [ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"
[ -z "$XDG_DATA_HOME" ] && export XDG_DATA_HOME="$HOME/.local/share"
[ -z "$XDG_CACHE_HOME" ] && export XDG_CACHE_HOME="$HOME/.cache"
export XMONAD_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/xmonad" # xmonad.hs is expected to stay here
export XMONAD_DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/xmonad"
export XMONAD_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/xmonad"

### CHANGE TITLE OF TERMINALS
case ${TERM} in
xterm* | rxvt* | Eterm* | aterm | kterm | gnome* | alacritty | st | konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
    ;;
screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

pxon() {
    # sudo pigchacli
    # sudo curl -o /usr/bin/pigchacli https://webdownload.duangspeed.com/linux/pigchacli_x86_64 -k
    # sudo chmod +x /usr/bin/pigchacli

    # 设置git代理执行：
    git config --global http.proxy http://127.0.0.1:15777 && git config --global https.proxy http://127.0.0.1:15777
    # 设置代理执行：
    export https_proxy=http://127.0.0.1:15777 http_proxy=http://127.0.0.1:15777
}

pxoff() {
    # 清理git代理执行：
    git config --global --unset https.proxy && git config --global --unset http.proxy
    # 清理代理执行：
    unset https_proxy http_proxy

}
q_mintty_set_bgimg() {
    if [ "$#" -eq 0 ]; then
        echo "require image file name !"
    elif [ "$1" = "/dev/null" ]; then
        printf "\e]11;\e\\"
    elif [ -f "$1" ]; then
        FILE="$(realpath -s """$1""" 2>/dev/null)"
        BRIGHT="${2:-100}"
        printf "\e]11;%s\e\\" "_${FILE},${BRIGHT}"
    else
        echo "'$1' is not a valid file !"
    fi
}
#src="/d/pics/ai"
#q_mintty_set_bgimg "$src/$(ls -1 $src | shuf -n 1)" 50
# rust
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export PKG_CONFIG_PATH="/usr/lib/pkgconfig:"
alias cargo="RUSTFLAGS='-Z threads=16' cargo +nightly"
alias cr="cargo run --offline"
alias cc="cargo check --offline"
alias cb="cargo build --offline"
export PATH=$PATH:/c/software/Git/bin:~/.cargo/bin:/c/software/Python3/Lib/site-packages/opencc/clib/bin
# pgrep -a -f fcitx5 || fcitx5 &


# windows dir
alias co="cd /d/codehub"
alias bp='bypy usyncup'
alias bll='bypy syncdown'


git_d(){
    local url="$1"
    local url_no_http="${url//https:\/\//}"
    local url_no_github="${url_no_http//github.com/}"
echo "https://ghproxy.cc/${url}     # [美国 洛杉矶][@yionchiii]
https://ghproxy.net/${url}     # [英国伦敦][ghproxy]
https://gh.ddlc.top/${url}   # [美国 Cloudflare CDN]mtr-static-official]
https://www.ghproxy.cn/${url}   # [美国 Cloudflare CDN] yionchiii]
https://cors.isteed.cc/${url_no_http} # [美国 Cloudflare CDN][@Lufs's]
https://hub.whtrys.space/${url_no_github}     # [美国 Cloudflare CDN][FastGit 群组成员]" > lists
    real_url=$(sed -n "$(($RANDOM%6+1))p" lists)
    wget $real_url
}


export TODO_DIR="$HOME/.todo"
export TODO_FILE="$HOME/.todo/todo.txt"
export DONE_FILE="$HOME/.todo/done.txt"
