
##

brname=brtap
ethname=eth1

install_ifcfg_tap                  ${ethname} mac=
/etc/init.d/network restart

install_ifcfg_bridge     ${brname}            mac=$(cat /sys/class/net/${ethname}/address)
map_ifcfg_bridge ${brname} slave=${ethname}
/etc/init.d/network restart
