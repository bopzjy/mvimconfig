
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" YoucompleteME Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gruvbox_italic = 1
" let g:gruvbox_contrast_light = 'medim'
" let g:gruvbox_contrast_dark = 'hard'

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" YoucompleteME Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :YcmCompleter GoToDefinition<CR>
nnoremap <F3> :YcmCompleter GoToDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"let g:ycm_key_list_previous_completion -= <up> 
"let g:ycm_key_invoke_completion -= <down>

" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>
" 如果修改了compile_commands.json，目前ycm没有看门狗程序，不能注意到compile_commands.json的修改
" 有两种办法可以在不关掉vim情况下重新加载配置
" 办法一：清掉配置缓存，这样再次跳转时会自动加载compile_commands.json（或者.ycm_extra_conf.py）
nnoremap <F8> :YcmCompleter ClearCompilationFlagCache<CR>
" 重启ycm server
" nnoremap <F8> :YcmRestartServer<CR>

" let g:SuperTabDefaultCompletionType    = '<C-n>'
" let g:SuperTabCrMapping                = 0
" let g:UltiSnipsExpandTrigger           = '<tab>'
" let g:UltiSnipsJumpForwardTrigger      = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
" let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>']
" let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>']
" let g:loaded_youcompleteme = 0

" let g:ycm_extra_conf_globlist = ['~/ceph-v10.2.6/*','']

" YCM默认自动会弹出函数原型预览窗口，搞乱布局，以下两行配置关闭该功能
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，且不再烦人地询问是否加载配置文件
" 默认为 1 ，目的是为了防止恶意代码自动加载
let g:ycm_confirm_extra_conf = 0

" 全局的 fallback conf，默认情况下使用该配置文件来给编译器传递编译参数，
" 对于大部分程序来说已经绰绰有余
" let g:ycm_global_ycm_extra_conf = '~/.vim/custom_config/ycm_extra_conf.py'

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags, 但是使用了后文中的 语义补全 后，就完全不需要这种辣鸡做法
" set tags+=/data/misc/software/misc./vim/stdcpp.tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM的补全：用 语义补全 来尽可能地替换 符号补全                                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 默认情况下，即使设置了如下参数，当输入两个字符也只会触发基于符号的补全
" let g:ycm_min_num_identifier_candidate_chars = 2
" 如果要启动 基于语义 的自动补全，以往出于性能考虑，需要用户显示自动
" let g:ycm_key_invoke_completion = '<c-z>'

" 默认情况下，只有 '->' '.' '::' 才会触发基于语义的补全
" 由于17年后 YCM 进化成异步操作，所以完全可以设置输入两个字符就自动触发 基于语义 的补全
" g:ycm_semantic_triggers 的默认设置为
" let g:ycm_semantic_triggers =  {
"   \   'c' : ['->', '.'],
"   \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
"   \             're!\[.*\]\s'],
"   \   'ocaml' : ['.', '#'],
"   \   'cpp,objcpp' : ['->', '.', '::'],
"   \   'perl' : ['->'],
"   \   'php' : ['->', '::'],
"   \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"   \   'ruby' : ['.', '::'],
"   \   'lua' : ['.', ':'],
"   \   'erlang' : [':'],
"   \ }

" 当设置过g:ycm_semantic_triggers后（ycm默认配置就已经设置过了），
" 再次设置会采用 追加方式 设置
" 即修改配置如下：(PS: 其中 ['re!\w{2}'] 匹配任意两个字符)
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDcommenter 
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'cpp': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'cc': { 'left': '/*','right': '*/' } }
let g:NERDCustomDelimiters = { 'bp': { 'left': '#','right': '' } }
let g:NERDCustomDelimiters = { 'cnf': { 'left': '#','right': '' } }
" let g:NERDCustomDelimiters = { 'test': { 'left': '#','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" If set to 0, none of the default mappings will be created.
let g:NERDCreateDefaultMappings = 0

" nmap <silent> <leader>u vaC<leader>cu
nmap <silent> <leader>u vaC<leader>c

map <leader>c <plug>NERDCommenterToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" fliter .o .lo files
"let NERDTreeIgnore = ['\.o$', '\.lo$']
"let NERDTreeIgnore = ['^[^E][^C].*']


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = '-std=c++11'        " 支持 c++11
"let g:syntastic_cpp_compiler_options = '-std=gnu++11'       " 支持 c++11

" 打开调试信息
" let g:syntastic_debug=1

" 用g++检测ceph时, 需要用到内核头文件
"let g:syntastic_cpp_compiler_options .= ' -I/usr/src/kernels/3.10.0-229.el7.x86_64/include/acpi/ '       " 支持 c++11


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   vim-one(a certain colorscheme)                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme='one'
let g:one_allow_italics=0

if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
else
    set t_8b=^[[48;2;%lu;%lu;%lum
    set t_8f=^[[38;2;%lu;%lu;%lum
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nnoremap <C-g> :cs find g <C-R>=expand("<cword>")<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" fswitch setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 将定义和实现之间快速切换的快捷键设置为;sw
nmap <silent> <Leader>sw :FSHere<cr>
" 让 cc 也和 h 成为companion
augroup myccfiles
    au!
    au BufEnter *.cc let b:fswitchdst  = 'hh,hpp,h'
    au BufEnter *.h let b:fswitchdst  = 'c,cpp,cc,m'
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" protodef setting
" 由类的声明，拷贝出类的实现，要结合着fswitch使用
" 默认快捷键: <leader>PP
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置 pullproto.pl 脚本路径, 默认不在这里
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
" 按照定义的顺序生成实现
let g:disable_protodef_sorting=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indexer setting
" 自动调用ctags来扫描工程，并生成静态标签
" 如果卡顿，可以选择关闭
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 工程目录信息存放位置
" Project root folders, used to identify ancestor path of project root directory.
" let g:indexer_root_folders = [$HOME]
" 有.git的文件夹，生成tags
" let g:indexer_root_markers = ['.git']
" 关联的文件
" let g:indexer_tags_watches = ["*.c", "*.h", "*.c++", "*.cpp", "*.cc", "*.php", "*.py"]
" ...
" let g:indexer_tags_command = "ctags"
" ...
" let g:indexer_tags_options = "-R --sort=yes --c++-kinds=+p+l --fields=+iaS --extra=+q --languages=c,c++,php,python"
" 标签文件存放位置
" let g:indexer_tags_savedir = "~/.vim_indexer_tags/"
" let g:indexer_tags_handler_locate = ["locate"]
" let g:indexer_tags_handler_reload = ["reload", "-1"]
" let g:indexer_tags_handler_update = ["update"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips setting
" 模板补全插件, 允许自定义模板
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
" let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
" let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"

" *.snippets文件搜索位置, 注意snippets是默认关键字，不能用
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']

" 代码作者名
let g:snips_author = "zanye.zjy"


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-snippets setting
" 模板补全的snippets文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 无需调校，即插即用，前提是装了Ultisnips


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-snippets setting
" wildfire.vim 快速选中光标下最近括号内的内容，并进入可视模式
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
map <leader><SPACE> <Plug>(wildfire-fuel)
vmap <leader><leader><SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]


let g:bookmark_sign = 'm'
" highlight BookmarkSign ctermbg=NONE ctermfg=160
" highlight BookmarkLine ctermbg=194 ctermfg=NONE
" set foldcolumn=1
" set foldmethod=manual

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP setting
" 取代 :e <tab> 的，可以模糊搜索
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 打开CtrlP的映射键
" let g:ctrlp_map = '<c-p>'
let g:ctrlp_map = '<leader>f'

" 如果vim打开时，对目录树做了改动（重命名、删除、新建文件等）
" 如果不想重启vim，可以重新刷新vim的ctrlp的缓存
" 方法是，在***ctrlp模式***下，按下 F5

" 默认：搜索的模糊匹配连路径都会匹配，比如abc会匹配a/b/c这样的
" 把它关掉
let g:ctrlp_by_filename = 1

" 输出的结果窗口要多大
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

" r - 最近的.git文件夹（只能在父路径）所在的目录
" a - 当前文件所在的目录
let g:ctrlp_working_path_mode = 'ra'

" 忽略某些文件
set wildignore+=*/.git/*,*.so,*.swp,*.zip,*/bin/*,*.la,*.a,*/build/*

" 为0的时候允许在多个tab中打开同一个文件
let g:ctrlp_switch_buffer = '0'

" 忽略搜索在.gitignore中定义忽略的文件
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" 修改映射
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<tab>', '<c-j>'],
    \ 'PrtHistory(-1)':       ['<c-n>'],
    \ 'PrtHistory(1)':        ['<c-p>'],
    \ 'PrtClearCache()':      ['<F7>'],
    \ }

" 默认的搜索工具太慢了，可以采用ag
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF setting
" 取代 :e <tab> 的神器，可以模糊搜索
" 只是fzf的vim前端，文档很少，可定制型很差，但是性能极高
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~25%' }

" let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Buffers] Jump to the existing window if possible
" let g:fzf_buffers_jump = 1

" 啥意思？没看懂
" [[B]Commits] Customize the options used by 'git log':
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" leaderf setting
" 取代 :e <tab> 的，可以模糊搜索
" 性能堪比fzf，而且可定制化好，还长得漂亮
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 默认情况下 <C-J> 往下导航，我更习惯于<TAB>，以下命令可以改默认的映射
" let g:Lf_CommandMap = {'<C-J>':['<TAB>'], '<C-K>':['<S-TAB>']}

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" incsearch setting
" 搜索时自动高亮
"""""""""""""""""""""""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" 下面一系列代码：让搜索完后自动取消高亮
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-signature setting
" 代码自动贴标签
"""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Gutentags setting                          "
"  结合ctags一起用的插件，可以自动update、load、create ctags的数据库   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags会自动update、load、create，让状态栏展示ctags在干什么
set statusline+=\ %{gutentags#statusline()}

" 默认在项目根目录下创建tags，现在统一放到一个文件夹上
let g:gutentags_cache_dir = "~/.ctags/"

" Some debugging/troubleshooting commands are also available if the
let g:gutentags_define_advanced_commands = 1

map <F6> <ESC>:GutentagsToggleEnabled<CR>

" dafault closed
let g:gutentags_enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Cscove: create, load, update database of cscope autocally  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 交互模式，提示你可以做的事情
" nnoremap <leader>sc :call CscopeFindInteractive(expand('<cword>'))<CR>

" 开关 list
" nnoremap <leader>z :call ToggleLocationList()<CR>

" c: Find functions calling this function
" 如果没有找到数据库，则会提示你创建，你选择项目的根目录即可
" 默认情况下 cscope 数据库统一放到~/.cscope.vim
" nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Tagbar: browse the tags of the current file and get an overview of its structure.  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F4> :TagbarToggle<CR>

let g:tagbar_autofocus = 1

" close me when jump to definition
let g:tagbar_autoclose = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-breakpoint: toggle breakpoint and save it to .breakpoint_[filename]  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle and save
nmap <leader>a :BreakpointToggle<CR>:BreakpointSave<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-easy-align: A simple, easy-to-use Vim alignment plugin  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" usage
" 1. in visual-mode select all text
" 2. press "ga" (NOTES: not ":ga") to enter interactive-mode
" 3. if "delimiter key" in {<Space>, =, :, ., |, &, #, ,} then
"       a. input it
"       b. press <CR> 
"    else
"       a. <CTRL-X> into regex mode
"       b. input regex representing the "delimiter key"
"       c. press <CR> 
"    end

" Delimiter key (a single keystroke; <Space>, =, :, ., |, &, #, ,) 
" or an arbitrary regular expression followed by <CTRL-X>
