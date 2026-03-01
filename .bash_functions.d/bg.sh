q_mintty_set_bgimg() {
    if [ "$#" -eq 0 ]; then
        echo "require image file name !"
    elif [ "$1" = "/dev/null" ]; then
        printf "\e]11;\e\\"
    elif [ -f "$1" ]; then
        FILE="$(realpath -s """$1""" 2> /dev/null)"
        BRIGHT="${2:-100}"
        printf "\e]11;%s\e\\" "_${FILE},${BRIGHT}"
    else
        echo "'$1' is not a valid file !"
    fi
}
#src="/d/pics/ai"
#q_mintty_set_bgimg "$src/$(ls -1 $src | shuf -n 1)" 50
