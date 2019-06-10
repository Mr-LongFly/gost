#!/usr/bin/env bash
echo "请提前安装好wget命令，手动安装 CentOS: yum install wget -y , Debian/Ubuntu: apt-get install wget -y !"
wget -N --no-check-certificate https://github.com/Mr-LongFly/gost/raw/master/ssrmu.sh
#
wget -N --no-check-certificate https://github.com/Mr-LongFly/gost/raw/master/gost.sh
#
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh"
#
chmod +x ssrmu.sh tcp.sh
