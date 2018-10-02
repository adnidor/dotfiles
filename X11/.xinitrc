[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#eval $(ssh-agent)
#eval $(gpg-agent --daemon --enable-ssh-support)
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export MAILER="~/scripts/email.sh"
setxkbmap de neo
xset dpms 0 0 0
xinput set-prop "$(xinput | awk -F'[=]' '/SynPS\/2 Synaptics TouchPad/ {print $2}' | awk '{print $1}')" 299 0 1
exec i3
