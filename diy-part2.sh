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

# Add themes
git clone https://github.com/XXKDB/luci-theme-argon_armygreen.git package/luci-theme-argon_armygreen
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
git clone https://github.com/toss-a/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/virualv/luci-theme-pink.git package/luci-theme-pink
git clone https://github.com/thomaswcy/luci-theme-rubik.git package/luci-theme-rubik

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/10.0.0.2/g' package/base-files/files/bin/config_generate

