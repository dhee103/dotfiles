autocmd VimEnter * echo ">^.^<" 
" Create file soon as they are opened
autocmd BufNewFile *.txt :write

" Correctly tab file on save & read
augroup filetype_tab
	autocmd!
	autocmd BufWritePre,BufRead *.html :normal gg=G
	autocmd BufWritePre,BufRead *.py :normal gg=G
augroup END

" Set Ctrl+/ to comment
augroup filetype_comment
	autocmd!
	autocmd FileType javascript,java,c nnoremap <buffer> cc I//<esc>
	autocmd FileType python noremap <buffer> cc I#<esc>
augroup END


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocomplete
Plugin 'valloric/youcompleteme'

" Status/tabline
Plugin 'bling/vim-airline'

" Colorscheme
Plugin 'flazz/vim-colorschemes'
colorscheme 256-jungle

" Easy quote/unquote etc
Plugin 'tpope/vim-surround'

" indent guide
Plugin 'nathanaelkane/vim-indent-guides'

" fix trailing whitespace with :FixWhitespace
Plugin 'bronson/vim-trailing-whitespace'

" add syntastic
" add autoformat
" add nerdtree

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" number lines
set number
set numberwidth=3

" jk to escape insert mode
inoremap jk <esc>

"select word
noremap <space> viw

"cut, copy line, paste, undo, all
noremap <c-x> <esc>dd
noremap <c-c> <esc>0v$yj
noremap <c-v> <esc>P
noremap <c-u> <esc>u
noremap <c-a> <esc>HvG$

" more natural split opening (below & right)
set splitbelow
set splitright

" move between split navigations easier
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

"split manipulation
"Max out the height of the current split
"ctrl + w _"
"Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w ="
"Swap top/bottom or left/right split
"Ctrl+W R"
"Break out current window into a new tabview
"Ctrl+W T"
"Close every window in the current tabview but the current one
"Ctrl+W o"

"" if arrow keys start being weird
imap ^[OA <ESC>ki
imap ^[OB <ESC>ji
imap ^[OC <ESC>li
imap ^[OD <ESC>hi

" move lines down/up
nnoremap <c-s> ddjP
inoremap <c-s> ddjP
nnoremap <c-w> ddkP
vnoremap <c-s> d<bs>p
inoremap <c-w> ddkP
vnoremap <c-w> di<Enter><esc>p

" delete d<"cmd>/change c<cmd> parameters(p)/body(b)
onoremap p i(
onoremap b /return<cr>

" open/source vimrc
noremap ev :split $MYVIMRC<cr>
noremap sv :source $MYVIMRC<cr>

" common abbreviations
iabbrev adn and
iabbrev @@ dsg115@ic.ac.uk




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
