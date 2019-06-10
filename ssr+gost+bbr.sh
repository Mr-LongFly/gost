#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#=================================================
#	System Required: CentOS 6+/Debian 6+/Ubuntu 14.04+
#	Description: 个人集成脚本
#	Version: 1.0
#	Author: 感谢：Toyo,就是爱生活,gost开发者
#=================================================


check_wget(){
	[[ ! -e "/usr/bin/wget" ]] && echo -e "${Error} 缺少依赖 wget ，请尝试手动安装 CentOS: yum install wget -y , Debian/Ubuntu: apt-get install wget -y !" && exit 1
}

install_ssr(){
	wget -N --no-check-certificate https://github.com/Mr-LongFly/gost/raw/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh
}

install_gost(){
	wget -N --no-check-certificate https://github.com/Mr-LongFly/gost/raw/master/gost.sh && bash gost.sh
}

install_bbr(){
	wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && bash tcp.sh
}

	echo -e " 

	1. 安装 优化脚本
	2. 安装 gost
	3. 安装 ssr
————————————
	4. 设置 优化脚本
	5. 设置 ssr
	6. 显示 gost状态
"
	check_wget
	;;
	echo && read -e -p "请输入数字 [1-6]：" num
case "$num" in
	1)
	install_bbr
	;;
	2)
	install_gost
	;;
	3)
	install_ssr
	;;
	4)
	bash tcp.sh
	;;
	5)
	bash ssrmu.sh
	;;
	6)
	gost
	;;
	*)
	echo -e "${Error} 请输入正确的数字 [1-15]"
	;;
esac
fi