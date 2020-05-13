#!/bin/bash
# Modify default IP
sed -i 's/192.168.1.1/192.168.220.1/g' package/base-files/files/bin/config_generate
# Modify SSH Key
sed -i 's/root::0:0/root:$1$fWgySbK2$CG12khZ5cp4fuwrwiC5Tn1:18336:0/g' package/base-files/files/etc/shadow
# Modify host name
sed -i 's/OpenWrt/N1/g' package/base-files/files/bin/config_generate
# Modify timezone
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate