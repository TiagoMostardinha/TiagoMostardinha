# ZSH History
export HISTFILE=~/.zsh_history
export HISTSIZE=100
export SAVEHIST=100

source ~/.config/.zsh/agnoster.zsh-theme
source ~/.config/.zsh/zsh_plugins.sh
source /home/tiago/DiscoD/0_Programs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# alias:
alias ls='ls --color=auto'
alias h='history'
alias hsi='hs -i'

# setup git information
autoload -Uz vcs_info
precmd_functions+=( vcs_info )
setopt prompt_subst
# %b: branch
# %u: unstaged changes
############################################
