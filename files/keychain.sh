if [[ -z "$SSH_AUTH_SOCK" ]] && [[ -f $HOME/.ssh/id_rsa ]]
then
    keychain $HOME/.ssh/id_rsa
    source $HOME/.keychain/$HOSTNAME-sh
fi
