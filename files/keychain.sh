if [[ -z "$SSH_AUTH_SOCK" ]]
then
    keychain --noask -q $HOME/.ssh/id_rsa
    source $HOME/.keychain/$HOSTNAME-sh
fi