## 简介
这是我自己的vim配置，保存在此主要方便自己使用。

### 如何使用

打开客户端，执行:
```
wget -qO- https://github.com/aaronshan/srf-vim.git/master/install.sh | sh -x
```

或者自己手动安装:
#### Ubuntu
1. 安装vim sudo apt-get install vim
2. 安装ctags：sudo apt-get install ctags
3. 安装一些必备程序：sudo apt-get install python-twisted xclip vim-gnome astyle python-setuptools
4. python代码格式化工具：sudo easy_install -ZU autopep8
5. sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
6. clone配置文件：cd ~/ && git clone git://github.com/ma6174/vim.git
7. mv ~/vim ~/.vim
8. mv ~/.vim/.vimrc ~/
9. clone bundle 程序：git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
10. 打开vim并执行bundle程序:BundleInstall
11. 重新打开vim即可看到效果

### Macos


