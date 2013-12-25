execute pathogen#infect()	
inoremap jj <ESC>
"映射jj为esc键
"映射标签页跳转
map <C-Left> :tabp<CR>
map <C-Right> :tabn<CR>
nmap WW :w<CR>

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
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
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
let g:SuperTabContextDefaultCompletionType = "<c-y>,"


"emmet
let g:user_emmet_mode='a'
"HTML  use <c-e> <c-n> <c-p>  
let g:user_emmet_expandabbr_key='<c-e>'  
let g:user_emmet_complete_tag=1  
let g:user_emmet_next_key='<c-j>'  
let g:user_emmet_prev_key='<c-k>'  
let g:user_emmet_togglecomment_key='<c-\>'
let g:user_emmet_settings = {  
\  'html' : {  
\    'filters' : 'html',  
\    'snippets' : {  
\      'bt' : "<!DOCTYPE html>\n<html>\n  <head>\n    <meta charset=\"UTF-8\">\n    <title></title>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n    <!--[if lt IE 9]>\n      <script src=\"/assets/js/html5shiv.js\"></script>\n      <script src=\"/assets/js/respond.min.js\"></script>\n    <![endif]-->\n  </head>\n  <body>\n    ${cursor}${child}\n    <script src=\"js/jquery.min.js\"></script>\n    <script src=\"js/bootstrap.min.js\"></script>\n  </body>\n</html>",  
\      'mn'      : "#include <functional>\n#include <algorithm>\n#include <iostream>\n#include <fstream>\n#include <sstream>\n#include <iomanip>\n#include <numeric>\n#include <cstring>\n#include <climits>\n#include <cassert>\n#include <cstdio>\n#include <string>\n#include <vector>\n#include <bitset>\n#include <queue>\n#include <stack>\n#include <cmath>\n#include <ctime>\n#include <list>\n#include <set>\n#include <map>\nusing namespace std;\ntypedef long long LL;\nconst int MOD =1e9 + 7;\nconst int INF = 0x3f3f3f3f;\n\nconst int MXN=1e6;\nint N,M;\n\nvoid Rush()\n{\n\tint T;\n\tscanf(\"%d\",&T);\n\tfor(int kas=1;kas<=T;++kas)\n\t{\n\t\tprintf(\"Case %d: \",kas);\n\t}\n}\nint main() \n{\n\t${cursor}\n\treturn 0;\n}\n",  
\    },  
\  },  
\}  


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
let mapleader=","
imap \\ :call<SPACE>NERDComment('i','Toggle')<CR>
nmap \\ :call<SPACE>NERDComment('n','Toggle')<CR>
vmap \\ :call<SPACE>NERDComment('v','Toggle')<CR>

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




"Session
let g:session_autosave='yes'
let g:session_autoload='yes'

"vimauthor
let g:authorinfo_author='Myon'
let g:authorinfo_email='zaq1mju7vfr4@gmail.com'



"vimmatchTag  

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'php' : 1,
    \ 'htm' : 1,
    \ 'jsp' : 1,
    \}

"jedi
let g:jedi#popup_on_dot = 0
