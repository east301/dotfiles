###
### ssh config management
###

alias compile-ssh-config="make -C ~/.ssh >/dev/null"
alias compile-ssh-config-verbose="make -C ~/.ssh"

alias sftp="compile-ssh-config && sftp"
alias ssh="compile-ssh-config && ssh"
alias scp="compile-ssh-config && scp"
alias rsync="compile-ssh-config && rsync"
