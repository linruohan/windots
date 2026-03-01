
# OpenClaw Completion
source "$HOME/.openclaw/completions/openclaw.zsh"
PERSONAL_ALIAS="$HOME/alias.sh"
[ -f "$PERSONAL_ALIAS" ] && source $PERSONAL_ALIAS

# function
source ~/.bash_functions.d/bg.sh
source ~/.bash_functions.d/git.sh
source ~/.bash_functions.d/proxy.sh
source ~/.bash_functions.d/ps1.sh
source ~/.bash_functions.d/yazi.sh

export PATH=$PATH:/c/software/Git/bin
[ -d "$HOME/.config/omz" ] && source $HOME/.config/omz/omz.zsh
