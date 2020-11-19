
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  The following are examples of different formats supported.  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" like leaderf, ctrlp. However, it's hard to use. 
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Sparkup lets you write HTML code faster.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" YCM
Plugin 'Valloric/YouCompleteMe'

" YCM-Generator
" generates a list of compiler flags from a project with an arbitrary build system
" generate a .ycm_extra_conf.py file for use with YouCompleteMe
" generate a .color_coded file for use with color_coded
" 基本上没什么用，因为要用clang编译，不方便线上使用
" Plugin 'rdnetto/YCM-Generator'

" gruvbox color scheme
Plugin 'morhetz/gruvbox'

" 注释工具
Plugin 'scrooloose/nerdcommenter'

" 代码块匹配工具的基础库，在上面扩展了许多代码块匹配插件
Plugin 'kana/vim-textobj-user'

" 匹配多行注释
Plugin 'glts/vim-textobj-comment'

" cpp-enhanced-highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" fast switch between header and implementation
" Plugin 'derekwyatt/vim-fswitch'

" copy pototype to implementation
Plugin 'derekwyatt/vim-protodef'

" 两次<leader>可以快速移动光标的位置
" fa正向移动到下一个a的位置
" Fa逆向移动到上一个a的位置
" 还可以配合v、d、y等命令
Plugin 'easymotion/vim-easymotion'

" 自动调用ctags生成静态标签 [弃用，完全比不过vim-gutentags]
" Plugin 'alvan/vim-indexer'

" 模板补全插件
Plugin 'SirVer/ultisnips'

" 常用的模板
Plugin 'honza/vim-snippets'

" 一些vim配色
Plugin 'ashfinal/vim-colors-violet'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

" 自动选定光标下最近括号内的所用内容
" Plugin 'gcmt/wildfire.vim'

" 搜索神器，用vimscript写的，性能很差，但是可定制化好
" Plugin 'ctrlpvim/ctrlp.vim'

" 模糊搜索工具，用python写的，已经很快了，但是还可以使用c扩展的模糊匹配工具，性能更快
Plugin 'Yggdroot/LeaderF'

" 听说ctrlp的默认搜索工具效率比较低，所以采用更高级的ag工具
" 但是必须要同时安装ag
" yum install epel the_silver_searcher
" Plugin 'rking/ag.vim'

" 听说是比ctrlp更高效的工具
" Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
" Plugin 'junegunn/fzf.vim'

" / ? 时自动高亮所有单词
Plugin 'haya14busa/incsearch.vim'

" 给代码贴标签
" Plugin 'kshenoy/vim-signature'

" tmux下的vim在复制粘贴时自动打开:set paste
Plugin 'ryanpcmcquen/fix-vim-pasting'
if filereadable("~/.vim/bundle/fix-vim-pasting/fix-vim-pasting.vim")
    source ~/.vim/bundle/fix-vim-pasting/fix-vim-pasting.vim
endif

Plugin 'rakr/vim-one'

" vim 和 tmux 无缝 navigate，还需要配置tmux，具体看官方文档
Plugin 'christoomey/vim-tmux-navigator'

" Tagbar is a Vim plugin that provides an easy way to browse the tags of
" the current file and get an overview of its structure.
Plugin 'majutsushi/tagbar'

" Gutentags: 结合ctags一起用的插件，可以自动update、load、create ctags的数据库
" <C-]> 打开光标指向的symbol的定义所在
Plugin 'ludovicchabant/vim-gutentags'

" Cscove: create, load, update database of cscope autocally
" but only `CscopeFindInteractive` is used now
" ;fc  -->  Find functions calling this function
" Plugin 'brookhong/cscope.vim'

" Plugin 'MattesGroeger/vim-bookmarks'

" align Text
Plugin 'junegunn/vim-easy-align'

" guess the root floder for current project, used by vim-breakpoint, cscope...
Plugin 'dbakker/vim-projectroot'

" set bp and save them to a file in root floder
" Plugin 'HugoNikanor/vim-breakpoint'

" wondorful python indent, for example:
" func(
"   a
"   cds
"   fg
" )
Plugin 'Vimjas/vim-python-pep8-indent'

" super fast Cscope results navigation using quickfix window.
" Plugin 'ronakg/quickr-cscope.vim'

" async
Plugin 'skywind3000/asyncrun.vim'

" A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plugin 'airblade/vim-gitgutter'

" a dark vim theme
Plugin 'dracula/vim'

" a vim theme with light/dark
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

" show git-blame info
Plugin 'zivyangll/git-blame.vim'

" 使用rtags来分析代码
" <leader>rj   Follow location (declaration)
" <leader>rJ   Follow declaration location
" <leader>rf   Find references
" <leader>rF   Call tree (o - open node, Enter - jump)
Plugin 'lyuts/vim-rtags'

" show diff on a same file
" Visually select one section of your file and type :Linediff. Visually select
" the other section and type :Linediff. It will put vim in to vimdiff mode,
" showing only the two sections you highlighted previously. Type:LinediffReset
" to exit vimdiff mode.
Plugin 'AndrewRadev/linediff.vim'

" TODO: comment it
" Plugin 'ryanoasis/vim-devicons'

" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" atomatically reestablishes the existing cscope connection
" when you change &ignorecase or
" when the cscope database has been updated.
" Plugin 'ktchen14/cscope-auto'

" man page
" Plugin 'nhooyr/neoman.vim'

" Plugin 'vim-utils/vim-man'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

source ~/.vim/custom_config/basic.vim
source ~/.vim/custom_config/plugin.vim
source ~/.vim/custom_config/my_configs.vim
