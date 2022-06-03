HISTFILE=~/.cache/zsh/.histzsh

HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

#No duplicates
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
