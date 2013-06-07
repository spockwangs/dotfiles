
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"          _
"      __ | \
"     /   | /
"     \__ | \
" by Amix - http://amix.dk/
"
" Maintainer: Amir Salihefendic <amix3k at gmail.com>
" Version: 2.7
" Last Change: 12/10/06 00:09:21
"
" Sections:
" ----------------------
" General
" Colors and Fonts
" Fileformats
" VIM userinterface
"    Statusline
" Visual
" Moving around and tabs
" General Autocommands
" Parenthesis/bracket expanding
" General Abbrevs
" Editing mappings etc.
" Command-line config
" Buffer related
" Files and backups
" Folding
" Text options
"    Indent
" Spell checking
" Plugin configuration
"    Yank ring
"    File explorer
"    Minibuffer
"    Tag list (ctags) - not used
"    LaTeX Suite things
" Filetype generic
"    Todo
"    Text
"    VIM
"    XML
"    HTML related
"    Ruby & PHP section
"    Python section
"    Cheetah section
"    Vim section
"    Java section
"    JavaScript section
"    C mappings
"    SML
"    Scheme bindings
"    Tex
" Snippets
"    Python
"    javaScript
" Cope
" Macros
" MISC
"
"  Tip:
"   If you find anything that you can't understand than do this:
"   help keyword OR helpgrep keywords
"  Example:
"   Go into command-line mode and type helpgrep nocompatible, ie.
"   :helpgrep nocompatible
"   then press <leader>c to see the results, or :botright cw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Set auto backup
set nobackup

set shiftwidth=8

"Set dictionary complete
set dictionary=/usr/share/dict/American-english,/usr/share/dict/british-english,~/.words.utf-8.add

"Enable filetype plugin
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Set auto write when a file is modified
set autowriteall

"Have the mouse enabled all the time:
set mouse=a

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>

"Fast reloading of the .vimrc
map <leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost ~/.vimrc :source ~/.vimrc
autocmd BufNewFile,BufRead ~/.vimrc :set shiftwidth=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

set gfn=fixed

if has("gui_running")
  set guioptions-=T
  let psc_style='cool'
  colorscheme torte
else
  set background=dark
  "colorscheme zellner
  "colorscheme peachpuff
  "colorscheme pablo
  "colorscheme torte
endif

autocmd BufEnter * :syntax sync fromstart

"Highlight current
if has("gui_running")
  set cursorline
  hi cursorline guibg=#333333
  hi CursorColumn guibg=#333333
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetype
set fileformats=unix,dos

"Set favorite character encodings
set fileencodings=utf-8,gbk

"Set internal encoding
set encoding=utf8

"Set terminal encoding (for keyboard inputs and display)
set termencoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Use English lanuage for messages
:language C

"Set 5 lines to the cursors - when moving vertical..
set so=5

"Turn on Wild menu
set wildmenu

"Always show current position
set ruler

"Show (partial) command in the last line of the screen
set showcmd

"The commandbar is 1 high
set cmdheight=1

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Backspace and cursor keys wrap to
set whichwrap+=<,>

"Ignore case when searching
set ignorecase
set smartcase

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set vb t_vb=

"show matching brackets
set showmatch

"How many tenths of a second to blink
set mat=2

"Increment search
set incsearch

"Highlight search things
set hlsearch

  """"""""""""""""""""""""""""""
  " Statusline
  """"""""""""""""""""""""""""""
  "Always hide the status line
  set laststatus=2

  "Format the Statusline
  set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %{getcwd()}%=%-20.(Line:\ %l/%L:%c%)%-.(--%p%%--\ \ %)

""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""
" From an idea by Michael Naumann
"function! VisualSearch(direction) range
"  let l:saved_reg = @"
"  execute "normal! vgvy"
"  let l:pattern = escape(@", '\\/.*$^~[]')
"  let l:pattern = substitute(l:pattern, "\n$", "", "")
"  if a:direction == 'b'
"    execute "normal ?" . l:pattern . "^M"
"  else
"    execute "normal /" . l:pattern . "^M"
"  endif
"  let @/ = l:pattern
"  let @" = l:saved_reg
"endfunction
"
""Basically you press * or # to search for the current selection !! Really useful
"vnoremap <silent> * :call VisualSearch('f')<CR>
"vnoremap <silent> # :call VisualSearch('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to : and c-space to ?
map <space> :
"map <c-space> ?

"smart way to move btw. windows
"map <S-j> <C-W><C-W><C-Y><C-W><C-W>
"map <S-k> <C-W><C-W><C-E><C-W><C-W>

"Actually, the tab does not switch buffers, but my arrows
"Bclose function can be found in "Buffer related" section
map <leader>bd :Bclose<cr>

"Use the arrows to something useful
map <up> :bn<cr>
map <down> :bp<cr>

"Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
nmap <right> :tabnext<cr>
nmap <left> :tabNext<cr>
try
  set switchbuf=usetab
  set showtabline=2
catch
endtry

"maintain the horizontal cursor position when
"scrolling with the <Page Up>, <Page Down>, etc keys
set nostartofline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp,h :set cindent
autocmd FileType lisp,scheme :set lisp

"Switch to current dir
map <leader>cd :cd %:p:h<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"My information

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings etc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Move a line of text using control
"nmap <M-k> mz:m-2<cr>`z
"nmap <M-j> mz:m+<cr>`z
"vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"Set a comma separated list of options for Insert mode completion
set completeopt=menu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command-line maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Bash like
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Kill buffer
nmap <C-K> :q<cr>

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup on
set nobackup
set wb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4

set smarttab
set nolinebreak
set textwidth=0
set wrapmargin=0

set formatoptions+=n2mB
   """"""""""""""""""""""""""""""
   " Indent
   """"""""""""""""""""""""""""""
   "Auto indent
   set autoindent

   "Smart indent
   set smartindent

   "C-style indenting
   set cindent

   "Wrap lines
   set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Set spell on
nmap <F4> :set spell spelllang=en_us<cr>
nmap <F5> :set nospell<cr>
set spellfile=~/.words.utf-8.add
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   """"""""""""""""""""""""""""""
   " Vim Grep
   """"""""""""""""""""""""""""""

   """"""""""""""""""""""""""""""
   " Yank Ring
   """"""""""""""""""""""""""""""

   """"""""""""""""""""""""""""""
   " File explorer
   """"""""""""""""""""""""""""""


   """"""""""""""""""""""""""""""
   " Minibuffer
   """"""""""""""""""""""""""""""


   """"""""""""""""""""""""""""""
   " Tag list (ctags) - not used
   """"""""""""""""""""""""""""""
   "let Tlist_Ctags_Cmd = "/sw/bin/ctags-exuberant"
   "let Tlist_Sort_Type = "name"
   "let Tlist_Show_Menu = 1
   "map <leader>t :Tlist<cr>


   """"""""""""""""""""""""""""""
   " LaTeX Suite things
   """"""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   " Todo
   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   "au BufNewFile,BufRead *.todo so ~/vim_local/syntax/amido.vim

   """"""""""""""""""""""""""""""
   " Text
   """"""""""""""""""""""""""""""
   autocmd BufNewFile,BufRead *.txt :set filetype=text
   autocmd FileType text :nnoremap <buffer> <leader>f mzgggqG`z
   """"""""""""""""""""""""""""""
   " VIM
   """"""""""""""""""""""""""""""
"   autocmd FileType vim map <buffer> <leader><space> :w!<cr>:source %<cr>


   """"""""""""""""""""""""""""""
   " XML
   """"""""""""""""""""""""""""""
   autocmd FileType xml set shiftwidth=4
   autocmd FileType xml set tabstop=4
   """"""""""""""""""""""""""""""
   " HTML related
   """"""""""""""""""""""""""""""



   """""""""""""""""""""""""""""""
   " Java section
   """""""""""""""""""""""""""""""
   au FileType java inoremap <buffer> <C-t> System.out.println();<esc>hi
    autocmd FileType java :nmap <buffer> <leader>f :%!indent<cr>

   "Java comments
   "autocmd FileType java source ~/vim_local/macros/jcommenter.vim
   autocmd FileType java let b:jcommenter_class_author='卼條條 (wbbhust@gmail.com)'
   autocmd FileType java let b:jcommenter_file_author='卼條條 (wbbhust@gmail.com)'
   autocmd FileType java map <buffer> <F2> :call JCommentWriter()<cr>

   "Abbr'z


   """"""""""""""""""""""""""""""
   " HTML
   """""""""""""""""""""""""""""""

   """"""""""""""""""""""""""""""
   " C mappings
   """""""""""""""""""""""""""""""
    "map external program `indent' to <leader>f
    autocmd FileType c :nmap <buffer> <leader>f :%!indent<cr>
    autocmd FileType c :set shiftwidth=4
    autocmd FileType c :set tabstop=4
    autocmd FileType c :set expandtab
    autocmd FileType c,cpp :set tw=70

   """"""""""""""""""""""""""""""
   " Scheme bindings
   """"""""""""""""""""""""""""""
"   autocmd BufNewFile,BufRead *.scm map <buffer> <leader><space> <leader>cd:w<cr>:!petite %<cr>
"   autocmd BufNewFile,BufRead *.scm inoremap <buffer> <C-t> (pretty-print )<esc>i
"   autocmd BufNewFile,BufRead *.scm vnoremap <C-t> <esc>`>a)<esc>`<i(pretty-print <esc>
    autocmd FileType scheme :nnoremap <buffer> <leader>f mzgg=G`z
    autocmd FileType scheme :inoremap <buffer> <CR> <CR><ESC>cc
    autocmd FileType scheme :nnoremap <buffer> o o<ESC>cc
    autocmd FileType scheme :nnoremap <buffer> O O<ESC>cc

   """""""""""""""""""""""""""""
   " Tex autocmd
   """""""""""""""""""""""""""""
    autocmd BufNewFile *.tex :normal gg0i\input{/home/wbb/Books/latex/macro.tex}
    autocmd BufNewFIle *.tex :set fenc=gbk

   """""""""""""""""""""""""""""
   " Mutt autocmd
   """""""""""""""""""""""""""""
    autocmd BufRead /tmp/mutt-* set textwidth=72
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For Cope
"map <silent> <leader><cr> :noh<cr>

"Original for all
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>
"map <leader>c :botright cw 10<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Use '\K' to see man page of the keyword under the cursor
:runtime! ftplugin/man.vim

"Use '_j' to format the selected text block
:runtime macros/justify.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove the Windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Paste current date
nmap <leader>d a<c-r>=strftime("%Y-%m-%d")<cr><ESC>

"Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>

"Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>

