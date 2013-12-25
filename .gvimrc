set guifont=Bitstream\ Vera\ Sans\ Mono\ 14
"Toggle Menu and Toolbar
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
			\set guioptions-=T <Bar>
			\set guioptions-=m <bar>
			\else <Bar>
			\set guioptions+=T <Bar>
			\set guioptions+=m <Bar>
			\endif<CR>
if has("gui_running")
	"    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
	"winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角
	"set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度
	set guioptions-=m       " 隐藏菜单栏
	set guioptions-=T        " 隐藏工具栏
	set guioptions-=L       " 隐藏左侧滚动条
	set guioptions-=r       " 隐藏右侧滚动条
	set guioptions-=b       " 隐藏底部滚动条
"	set showtabline=0       " 隐藏Tab栏
endif
"自动最大化启动
if has('win32')
	au GUIEnter * simalt ~x
else
	au GUIEnter * call MaximizeWindow()
endif

function! MaximizeWindow()
	silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
