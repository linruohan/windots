git_d() {
    local url="$1"
    local url_no_http="${url//https:\/\//}"
    local url_no_github="${url_no_http//github.com/}"
    echo "https://ghproxy.cc/${url}     # [美国 洛杉矶][@yionchiii]
https://ghproxy.net/${url}     # [英国伦敦][ghproxy]
https://gh.ddlc.top/${url}   # [美国 Cloudflare CDN]mtr-static-official]
https://www.ghproxy.cn/${url}   # [美国 Cloudflare CDN] yionchiii]
https://cors.isteed.cc/${url_no_http} # [美国 Cloudflare CDN][@Lufs's]
https://hub.whtrys.space/${url_no_github}     # [美国 Cloudflare CDN][FastGit 群组成员]" > /tmp/lists
    real_url=$(sed -n "$(($RANDOM % 6 + 2))p" /tmp/lists)
    echo "real_url=$real_url"zqe
    wget $real_url
}
clone() {
    local url="$1"
    url=${url##https://github.com/}
    url=${url##http://github.com/}
    local dir="${2}"
    cd /d/codehub/
    if [ -n "$dir" ]; then
        git clone ssh://git@ssh.github.com:443/"$url" "$dir"
    else
        git clone ssh://git@ssh.github.com:443/"$url"
    fi
}

hosts_update() {
    local hosts="/c/Windows/System32/drivers/etc/hosts"
    cd /d/codehub/github-host && python main.py > "$hosts"
    wget "https://gitlab.com/ineo6/hosts/-/raw/master/next-hosts" -q -O - >> "$hosts"
    cat $hosts
}

function git-branch-name() {
    git symbolic-ref HEAD 2> /dev/null | cut -d"/" -f 3
}
function git-branch-prompt() {
    local branch=$(git-branch-name)
    if [ $branch ]; then
        printf "(%s)" $branch
    fi
}
