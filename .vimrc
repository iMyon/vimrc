execute pathogen#infect()	
inoremap jj <ESC>
"映射jj为esc键
"映射标签页跳转
map <C-Left> :tabp<CR>
map <C-Right> :tabn<CR>

set showcmd					"显示输入命令
set nocompatible            " 关闭 vi 兼容模式
au FileType * setl fo-=cro  "关闭换行自动注释 
syntax on                   " 自动语法高亮
colorscheme darkburn		" 设定配色方案
set number                  " 显示行号
set shiftwidth=4            " 设定 > 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set autochdir               " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on   " 开启插件
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
"set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set enc=utf-8  "编码设置
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8   "语言设置
set helplang=cn
set whichwrap+=<,>,h,l     " 允许backspace和光标键跨越行边界

"js缩进
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


"set t_Co=256
set background=dark
let g:solarized_termcolors=256


"开启自动补全
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd Filetype java set omnifunc=javacomplete#Complete
let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


"emmet
let g:user_emmet_mode='a'



let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
map <F4> :TlistToggle<CR>


"NERDtree
"autocmd vimenter * NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
"最后窗口是它时关闭vim 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"NERDComment

"WMToggle
map <F3>  :WMToggle<CR>
"let g:winManagerWindowLayout='NERDTree|BufExplorer'
let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='NERDTree|BufExplorer'
function! NERDTree_Start()
exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
return 1
endfunction
