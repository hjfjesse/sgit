#####最小化安装CENTOS7后，下一步的操作#########



yum install -y net-tools bash-completion vim-enhanced wget lrzsz htop  gcc gcc-c++
yum install -y epel-release

##关闭SELINUX 和 防火墙
setenforce 0
systemctl stop firewalld
systemctl disable firewalld.service



#进入源的目录 
cd /etc/yum.repos.d/
mkdir repo_bak
mv *.repo repo_bak
#下载阿里源,163源 
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
wget http://mirrors.163.com/.help/CentOS7-Base-163.repo

#清除系统yum缓存并生成新的缓存
yum clean all && yum makecache
yum repolist

sleep 10

