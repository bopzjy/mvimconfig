syntax on
set background=dark 

set nu

" 把自动注释关掉
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on in-place when edit crontab
"""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType crontab setlocal nowritebackup
"set backupcopy=yes

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" map W to w
"""""""""""""""""""""""""""""""""""""""""""""""""""""
command! WQ wq
command! Wq wq
command! W w
command! Q q

" 字母大写
inoremap <C-v> <esc>gUiwea

" 快捷键打括号
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          命令行模式快捷键                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
" 默认情况下<C-J>会相当于在命令行下按下o, 不需要这样
" <C-J> 留着做其他事情
map <C-J> <NOP>

" 配色
syntax on
syntax enable
let g:solarized_termcolors=256
" set background=light
colorscheme gruvbox
set background=dark
" colorscheme solarized
" colorscheme violet
" colorscheme tango
" colorscheme PaperColor
" colorscheme gryffin
" colorscheme lucius
" colorscheme peaksea

" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
" set nocompatible

" a回到行首并输入
noremap a ^i

set wildignorecase

" vim滚动卡顿？
set lazyredraw
set ttyfast

" 打开extended regular expression
" 其实就是所有以\v开启的模式串，其后面的 {,( 等都可以不用加转义符号
" 但是代价是：如果真的要用本义，则反而要加转义符号\,
" 搜索：abc{  两种方法: 
" /\vabc\{     OR
" /abc{
" nnoremap / /\v
" vnoremap / /\v

" 映射find命令，方便打开文件
" map <leader>f :find

" 设置命令行的高度为1，这样底部空间就比较大
set cmdheight=1

" cpp 的 commentstring 设置为"// " ('\'为转义)
autocmd FileType cpp setlocal commentstring=//%s
autocmd FileType c setlocal commentstring=//%s

" 当.vimrc、my_configs.vim、plugin.vim、configVundle.vim修改后自动加载vimrc，
" augroup auto_load_vimrc
"     au!
"     au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,my_configs.vim,configVundle.vim,plugin.vim so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
" augroup END

" Because Vim doesn't like
" pasting that works.

" let &t_SI .= "\<Esc>[?2004h"
" let &t_EI .= "\<Esc>[?2004l"
"
" inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
"
" function! XTermPasteBegin()
"     set pastetoggle=<Esc>[201~
"     set paste
"     return ""
" endfunction

" 将边框给去掉，不然的话会拷贝的时候总是会多一列，看起来也不舒服
set foldcolumn=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            c/c++ indent                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 如果想这样：
" void func(int a, int b)
" 换车后变成
" void func(int a,
"           int b)
" 而不是：
" void func(int a,
"     int b)
" 则可以设置如下：
set cino+=(0

" 其原理可以查看
" :help cino-(
" cino-(N
" 该变量决定了当回车后，对齐到上一行 '(' 后N个字符

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
" When the file has been deleted this is not done.
:set autoread<

" mysql .test file highlight, comment
autocmd BufNewFile,BufRead *.test set ft=sh

" mysql .cnf file highlight, comment
autocmd BufNewFile,BufRead *.cnf set ft=sh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           python indent                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python config
" autocmd FileType python setlocal
"       \ tabstop=2       " tab宽度
"       \ softtabstop=2
"       \ shiftwidth=2
"       \ textwidth=80    " 行最大宽度
"       \ expandtab       " tab替换为空格键
"       \ autoindent      " 自动缩进
"       \ fileformat=unix " 保存文件格式

autocmd FileType python setlocal 
      \ tabstop=2
      \ softtabstop=2
      \ shiftwidth=2
      \ textwidth=90
      \ expandtab
      \ autoindent
      \ fileformat=unix

" I don't want to get help manual
nmap <F1> <nop>

" disable EX mode
map q: <Nop>
nnoremap Q <nop>
