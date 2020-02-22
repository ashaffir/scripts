sudo rm /tmp/.X1-lock
sudo rm /tmp/.X11-unix/X1
vncserver :1

Fix the TAB completion issue:
----------------------
edit
~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

find the line 

<property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"/>

and change it to 

<property name="&lt;Super&gt;Tab" type="empty"/>

restart the VNC session.

==================================

Fix "Too many authentication failures error" 
---------------------
1) Kill the previous session and restart the VNC server
2) Add your IP address to allowed IPs 
iptables -I INPUT -p tcp -s  <your-ip> --dport 5901 -j ACCEPT
3) Drop all other IPs
iptables -A INPUT -p tcp -s 0.0.0.0/0 --dport 5901 -j DROP





