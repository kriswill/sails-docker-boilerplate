# ~/.bashrc: executed by bash(1) for non-login shells.

export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# fancy way to add /sails/node_modules/.bin to the path
eval export $(npm run env -s | grep PATH)
