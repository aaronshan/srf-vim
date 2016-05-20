" 解决乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

syntax enable			" 自动语法高亮
set background=dark		"背景深色显示 
"colorscheme molokai	" 设定配色方案
colorscheme solarized
set number				" 显示行号
set cursorline			" 突出显示当前行
set tabstop=4			" 设定 tab 长度为 4
set paste				" 设置粘贴模式,确保黏贴代码格式正确 
set linebreak			" 整词换行
set confirm				" 在处理未保存或只读文件时，弹出确认提示 

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
set laststatus=2		" 总是显示状态栏status line
set ruler				" 在编辑过程中，右下角显示光表位置的状态行
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 自定义的键映射

" 实现CTRL-S保存操作
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" 实现了CTRL-C、CTRL-V复制粘贴操作的映射
vnoremap <c-c> "+y
inoremap <c-v> <esc>"+p<CR>i

map <F2> <c-e>   " 使用F2上翻页
map <F3> <c-y>   " 使用F3下翻页

"列出当前目录文件
map <C-n> :NERDTreeToggle<CR>
imap <C-n> <ESC> :NERDTreeToggle<CR>
