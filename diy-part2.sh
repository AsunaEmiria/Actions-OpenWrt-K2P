#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/dhcp/pppoe/g' package/base-files/files/lib/functions/uci-defaults.sh
sed -i "s/'username'/'FSFTH3984975971508224@16900.gd'/g" package/base-files/files/bin/config_generate
sed -i "s/'password'/'900.gd'/g" package/base-files/files/bin/config_generate
