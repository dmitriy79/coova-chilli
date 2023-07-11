#/bin/sh

opkg update
opkg install coova-chilli 
opkg install kmod-tun 
rm /etc/init.d/chilli
rm /etc/chilli/defaults
wget -O /etc/init.d/chilli https://www.mywifi.com/scripts/chilli
chmod a+x /etc/init.d/chilli
wget -O /etc/chilli/defaults https://www.mywifi.com/scripts/defaults
/etc/init.d/chilli enable
/etc/init.d/chilli start
