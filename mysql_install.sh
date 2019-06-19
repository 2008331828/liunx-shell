#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#=================================================
#	System Required: CentOS 7
#	Description: Install the mysql and configurion
#	Version: 1.0.2"
#	Author: 小布丁的心事
#=================================================
sh_ver="1.0.2"
yum_souse="/etc/yum.repo/"


Install_mysql(){

  ${Green_font_prefix} 1.${Font_color_suffix} 安装MYSQL 5.5
  ${Green_font_prefix} 2.${Font_color_suffix} 安装MYSQL 5.6
  ${Green_font_prefix} 3.${Font_color_suffix} 安装MYSQL 5.7
	echo && stty erase '^H' && read -p "请输入数字 [1-15]：" num
case "$num" in
	1)
	Install_mysql_5.5
	;;
	2)
	Install_mysql_5.6
	;;
	3)
	Install_mysql_5.7
	;;
	*)
	echo -e "${Error} 请输入正确的数字 [1-15]"
	;;
esac
fi

}

Install_mysql_5.5()
{



}


Install_mysql_5.6()
{}


Install_mysql_5.7()
{}








Remove_mysql()
{
}


	echo -e "  MYSQL 一键部署脚本 ${Red_font_prefix}[v${sh_ver}]${Font_color_suffix}
  ---- bye-小布丁的心事----

  ${Green_font_prefix} 1.${Font_color_suffix} 安装MYSQL
  ${Green_font_prefix} 2.${Font_color_suffix} 卸载MYSQL
	echo && stty erase '^H' && read -p "请输入数字 [1-15]：" num
case "$num" in
	1)
	Install_mysql
	;;
	2)
	Remove_mysql
	*)
	echo -e "${Error} 请输入正确的数字 [1-15]"
	;;
esac
fi