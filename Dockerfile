FROM ubuntu:14.04
# LEDE 编译环境
ADD aliyun.ubuntu14.04.sources.list /etc/apt/sources.list
RUN dpkg --add-architecture i386&&\
        apt update&&\
        apt install -y build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3.5 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib linux-libc-dev:i386 curl wget tree\
        && useradd -m alex
# 
# 3. git clone https://github.com/coolsnowwolf/lede 命令下载好源代码，然后 cd lede 进入目录
# 
# 4. ./scripts/feeds update -a 
#    ./scripts/feeds install -a
#    make menuconfig 
