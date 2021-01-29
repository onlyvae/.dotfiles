""""""""""""""""""""""""""""""
"         Vundle设置          " 
"""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'tomasr/molokai'

Plugin 'vim-airline/vim-airline'

Plugin 'preservim/nerdcommenter'
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


"""""""""""""""""""""""""""""""
"         插件设置            " 
"""""""""""""""""""""""""""""""
"nerdtree
"autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle<CR>
" 设置当窗口只剩nerdtree时自动关闭vim
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

"设置tab切换buff
nmap <tab> :bn<CR>

"""""""""""""""""""""""""""""""
"         界面设置            " 
"""""""""""""""""""""""""""""""
" 设置主题
syntax enable
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" 设置字体
set guifont=Fira\ Code:h14

" 关闭左滚动条
set guioptions-=L

" 显示行号
set number
set showcmd
