" Bundule需要
set nocompatible               " be iMproved
filetype off                   " required!


" 解决乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

syntax enable			" 自动语法高亮
set background=dark		" 背景深色显示 
"colorscheme molokai	" 设定配色方案
colorscheme desert
"colorscheme solarized
set number				" 显示行号
set cursorline			" 突出显示当前行
set tabstop=4			" 设定 tab 长度为 4
set linebreak			" 整词换行
set confirm				" 在处理未保存或只读文件时，弹出确认提示 
set backspace=2         " 把delete键配置成增强模式，解决delete无法正常工作的问题

" 编辑相关
map b wbi{<Esc>ea}<Esc>					" 利用前导键加b，则可以在一个单子两边加上大括号
map #a :s/^\([^#]\s*\)/#\1/<CR>			" 如果所选行的行首没有#，则给所选行行首加上注释符#（#a：# add）
map #d :s/^#\+\(\s*\)/\1/<CR>			" 如果所选行行首有#，则将所选行行首所有的#都去掉（#d：# delete）
map /a :s/^\([^\/\/]\s*\)/\/\/\1/<CR>	" 如果所选行的行首没有//，则给所选行行首加上注释符//（/a：/ add）
map /d :s/^\/\/\(\s*\)/\1/<CR>			" 如果所选行行首有//，则将所选行行首的//都去掉（/d：/ delete）

" 搜索相关
set ignorecase			" 搜索忽略大小写
set nohlsearch			" 搜索字符串不要高亮显示（即敲回车以后）  
set incsearch			" 搜索输入字符串过程中高亮显示（即未敲回车）

" 状态栏相关
autocmd InsertEnter * se cul    " 用浅色高亮当前行
set ruler				" 在编辑过程中，右下角显示光标位置的状态行
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2		" 总是显示状态栏status line

" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

" 自动缩进
set autoindent
set cindent

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab

"搜索逐字符高亮
set hlsearch
set incsearch

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" 总是显示状态行
set cmdheight=2

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 自定义的键映射

" 实现CTRL-S保存操作
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" 实现了CTRL-C、CTRL-V复制粘贴操作的映射
vnoremap <c-c> "+y
inoremap <c-v> <esc>"+p<CR>i

map <F2> <c-e>   " 使用F2上翻页
map <F3> <c-y>   " 使用F3下翻页

" 映射粘贴模式
:set pastetoggle=<C-H>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Yggdroot/indentLine'
let g:indentLine_char = '┊'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Townk/vim-autoclose'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/vim-auto-save'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/fcitx.vim'
Bundle 'slim-template/vim-slim'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" NERDTree 插件配置

"列出当前目录文件
map <C-n> :NERDTreeToggle<CR>
imap <C-n> <ESC> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif "自动关闭

"vim auto save
let g:auto_save = 1  " enable AutoSave on Vim startup

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Meslo\ LG\ S\ for\ Powerline
    endif
endif

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
