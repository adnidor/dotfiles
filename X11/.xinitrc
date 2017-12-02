[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
eval $(ssh-agent)
export MAILER="~/scripts/email.sh"
setxkbmap de neo
xmodmap .Xmodmap
xset dpms 0 0 0
exec i3
