#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/1164715233/package.git package/luci-app-eqos
git clone https://github.com/1164715233/package.git package/smartdns
git clone https://github.com/1164715233/package.git package/luci-app-smartdns
# Fix WiFi disabled after reboot
sed -i "2a\ifconfig rax0 up\nifconfig ra0 up\nifconfig apclix0 up\nifconfig apcli0 up" package/base-files/files/etc/rc.local

