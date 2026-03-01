function get-PS1() {
    local branchname=$(git-branch-prompt)
    printf "\n\e[32m%s\e[36m%s\e[35m %s \e[33m%s\e[36m %s \e[0m \n%s " "\u" "[\#]" "MSYS" "\w" $(git-branch-prompt) "\$"
}
function show-PS1() {
    if [ -d "$(pwd)/.git" ]; then
        export PS1=$(get-PS1)
    else
        export PS1="\n\[\e[32m\]\u\[\e[36m\][\#]\[\e[35m\] MSYS \[\e[33m\w\]\[\e[0m\] \n\$ "
    fi
}
