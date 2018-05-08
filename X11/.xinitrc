[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#eval $(ssh-agent)
#eval $(gpg-agent --daemon --enable-ssh-support)
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export MAILER="~/scripts/email.sh"
setxkbmap de neo
xmodmap .Xmodmap
xset dpms 0 0 0
exec i3
