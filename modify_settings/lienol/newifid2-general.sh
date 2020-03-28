#!/bin/bash
# Modify default IP
sed -i 's/192.168.1.1/192.168.220.99/g' package/base-files/files/bin/config_generate
# Modify SSH Key
sed -i 's/root::0:0/root:$1$fWgySbK2$CG12khZ5cp4fuwrwiC5Tn1:18336:0/g' package/base-files/files/etc/shadow
# Modify host name
sed -i 's/OpenWrt/Newifi-D2/g' package/base-files/files/bin/config_generate
# Modify timezone
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
# Modify WiFi settings
rm -f package/kernel/mac80211/files/lib/wifi/mac80211.sh
cp ../modify_settings/lienol/newifid2-mac80211.sh package/kernel/mac80211/files/lib/wifi/mac80211.sh
