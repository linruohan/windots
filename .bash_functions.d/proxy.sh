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
