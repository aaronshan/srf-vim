#!/bin/sh
echo "即将开始安装，请耐心等待安装完成..."

# 如果是linux系统
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git 
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel 
fi

# 如果是macos系统
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/vim ~/vim_old
cd ~/ && git clone https://github.com/aaronshan/srf-vim.git vim

mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/.vimrc ~/

# install fonts
fonts/install_fonts.sh

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "aaronshan 正在努力为您安装bundle 程序" > aaronshan
echo "安装完毕将自动退出" >> aaronshan
echo "请耐心等待" >> aaronshan
vim aaronshan -c "BundleInstall" -c "q" -c "q"
rm aaronshan
echo "安装完成"
