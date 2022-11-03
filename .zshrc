# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias feh='feh --scale-down --auto-zoom'
alias mount-isu='gio mount smb://myfiles.iastate.edu/users/klin'
alias unmount-isu='gio mount -u smb://myfiles.iastate.edu/users/klin'

# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ISU Samba Share
udrive=/run/user/1000/gvfs/smb-share:server=myfiles.iastate.edu,share=users/klin

if [[ -d $udrive ]]; then
    hash -d udrive=$udrive
fi

# Exports
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'  
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export HISTFILE=~/.zsh_history
export HISTSIZE=350
export SAVEHIST=1500
export HISTCONTROL=ignoreboth
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export BIN=".local/bin/*"
export PATH=$PATH:$GEM_HOME/bin:$BIN

# Setopt
setopt auto_cd
setopt extended_glob

# Autoloads
autoload -Uz compinit
compinit
                   
USE_POWERLINE="true"

# Clear Terminal Buffer with Ctrl L --disabled scrollback in various Terminals
# function clear-screen-and-buffer() {
#    echoti civis >"$TTY"
#    printf '%b' '\e[H\e[2J' >"$TTY"
#    zle .reset-prompt
#    zle -R
#    printf '%b' '\e[3J' >"$TTY"
#	echoti cnorm >"$TTY"
# }

# Exit on Ctrl D while CLI is filled
function exit_zsh() {
	exit 
}

zle -N exit_zsh
# zle -N clear-screen-and-buffer
# bindkey '^L' clear-screen-and-buffer
bindkey '^D' exit_zsh

# Source various plugins
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
