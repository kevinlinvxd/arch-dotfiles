alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

udrive=/run/user/1000/gvfs/smb-share:server=myfiles.iastate.edu,share=users/klin

if [[ -d $udrive ]]
then
    hash -d udrive=$udrive
fi
 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'  
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

export HISTFILE=~/.zsh_history
export HISTSIZE=100
export SAVEHIST=1000

setopt auto_cd
setopt extended_glob

autoload -Uz compinit
compinit
                   
USE_POWERLINE="true"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
