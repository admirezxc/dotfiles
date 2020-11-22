#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
xrdb -merge ~/.Xresources
while true; do
  #xsetroot -name "[ $(date '+%m-%d %H:%M') ]    "
  xsetroot -name "[ $(date '+%H:%M %A %m/%d') ]"
 
sleep 10
done &
# set language
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export INPUT_METHOD="fcitx5"
export GTK_IM_MODULE="fcitx5"
export QT_IM_MODULE="fcitx5"
export XMODIFIERS="@im=fcitx5"
# 启动软件
killall -q qv2ray
sleep 2; qv2ray &

vncserver &
nitrogen --restore
numlock &
xset r rate 200 30
fcitx5 &
xmodmap ~/.Xmodmap

#picom
#killall -q picom
#while pgrep -x picom >/dev/null; do sleep 1; done
#picom -b --config ~/.dwm/picom/picom.conf --experimental-backends --blur-method dual_kawase --blur-strength 6 --no-fading-openclose
#picom -b --config $DIR/picom.conf
