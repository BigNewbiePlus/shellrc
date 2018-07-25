""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme desert " 配色方案
set nocompatible   " 去掉有关vi一致性模式，避免以前版本的bug和局限
set nu!            " 显示行号
" set guifont=Courier_new:h14:b:cDEFAULT
filetype on " 检测文件的类型
set vb t_vb= " 去除vim命令输入错误时系统发出的响声
set history=1000 " 记录历史的行数
" set background=dark " 背景使用黑色
syntax on " 语法高亮显示
set autoindent " vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进)
set cindent " (cindent是特别针对C语言语法自动缩进)
set smartindent " 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set tabstop=5 " 设置tab键为4个空格
set shiftwidth=4 " 设置当行之间交错时使用4个空格
set ai! " 设置自动缩进
set showmatch " 设置匹配模式，累世于当输入一个左括号时会匹配相应的右括号
set guioptions-=T " 去除vim的GUI版本中的toolbar
set ruler " 在编辑过程中，在右上角显示光标位置的状态行
set nohls " 默认情况下，寻找匹配的高亮度显示，改设置关闭高亮显示
set incsearch " 在程序中查询一单词，自动匹配单词的位置；如查询desk单词，但输到/d时，会自动找到第一个d开头的单词
set ts=4 " 设置按TAB产生4个空格
set expandtab
set t_Co=256
color molokai
let g:molokai_original = 1 " origin monokai background color
" let g:rehash256 = 1 " bring the 256 color version as close as possible to the the default (dark) GUI version
let g:airline_theme='luna'
let g:neocomplete#enable_at_startup = 1
let g:deoplete#enable_at_startup = 1

" hi String ctermfg=darkred " 修改字符串颜色
" hi Type ctermfg=yellow " 修改类型颜色
" hi Number ctermfg=darkblue " 修改数字颜色
" hi Constant ctermfg=blue "  修改常量颜色
" hi Statement ctermfg=darkyellow "修改声明颜色

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bundle config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/neocomplete.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" set toggle
map <F3> :NERDTreeMirror<CR>  
map <F3> :NERDTreeToggle<CR>


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
