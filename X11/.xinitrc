[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#eval $(ssh-agent)
#eval $(gpg-agent --daemon --enable-ssh-support)
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export MAILER="~/scripts/email.sh"
export QT_QPA_PLATFORMTHEME=qt5ct
setxkbmap de
xset dpms 0 0 0
xinput set-prop 'SynPS/2 Synaptics TouchPad' "libinput Click Method Enabled" 0 1
xinput set-prop 'SynPS/2 Synaptics TouchPad' "libinput Disable While Typing Enabled" 0

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
