sudo rm /tmp/.X1-lock
sudo rm /tmp/.X11-unix/X1
vncserver :1

Fix the TAB completion issue:
edit
~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

find the line 

<property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"/>

and change it to 

<property name="&lt;Super&gt;Tab" type="empty"/>

restart the VNC session.


