alias dotfiles='/usr/bin/git --git-dir=$HOME/arch-dotfiles/ --work-tree=$HOME' 

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

export HISTFILE=~/.zsh_history
export HISTSIZE=50
export SAVEHIST=1000

setopt auto_cd
setopt extended_glob

autoload -Uz compinit
compinit

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
                     
# Use powerline
USE_POWERLINE="true"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
