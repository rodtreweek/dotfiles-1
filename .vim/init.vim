"###############
"### Plugins ###
"###############

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind'] }
Plug 'SirVer/ultisnips'
Plug 'neomake/neomake'
Plug 'jlanzarotta/bufexplorer'
Plug 'janko-m/vim-test', { 'on': ['TestFile', 'TestNearest', 'TestLast'] }
Plug 'mattn/emmet-vim',
  \ { 'for': ['html', 'eruby.html', 'css', 'scss', 'javascript.jsx', 'php'] }
if has('nvim') | Plug 'Shougo/deoplete.nvim', { 'on': [] } | endif

Plug 'sheerun/vim-polyglot'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'haya14busa/vim-textobj-function-syntax'
Plug 'inkarkat/argtextobj.vim'
Plug 'tek/vim-textobj-ruby', { 'for': 'ruby' }
Plug 'whatyouhide/vim-textobj-erb', { 'for': 'eruby' }

Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive', { 'on': [] }
Plug 'jeromedalbert/vim-rails', { 'for': ['ruby', 'eruby'] }

Plug 'vim-scripts/ReplaceWithRegister'
Plug 'tommcdo/vim-exchange'
Plug 'skwp/greplace.vim', { 'on': ['Gqfopen', 'Greplace'] }
Plug 'jeromedalbert/auto-pairs'
Plug 'kurkale6ka/vim-pairs'
Plug 'valloric/MatchTagAlways', { 'for': ['html', 'eruby.html', 'xml', 'javascript.jsx'] }
Plug 'vim-scripts/closetag.vim', { 'for': ['html', 'eruby.html', 'xml', 'javascript.jsx'] }
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'haya14busa/incsearch.vim'
Plug 'nishigori/increment-activator'
Plug 'sickill/vim-pasta'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'xolox/vim-misc', { 'on': ['SaveSession', 'OpenSession'] }
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'fidian/hexmode', { 'on': 'Hexmode' }
Plug 'wincent/replay'
Plug 'ludovicchabant/vim-gutentags'
Plug 'joonty/vdebug', { 'on': ['Breakpoint', 'VdebugStart'] }
Plug 'dhruvasagar/vim-buffer-history'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
" Plug 'christoomey/vim-tmux-runner'
call plug#end()

"############################
"### General key mappings ###
"############################

let mapleader = ' '
noremap - :

map J 5j
map K 5k
map 0 ^
nnoremap d0 d^
noremap Y y$
noremap Q <nop>

noremap <silent> <leader>q :q<cr>
noremap <silent> <leader>w :w<cr>
noremap <silent> <leader>z :x<cr>
noremap <silent> <leader><esc> <nop>
noremap <silent> <leader>`q :qa!<cr>
noremap <silent> <leader>`w :w !sudo tee % > /dev/null<cr>

noremap ' "

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
cnoremap <up> <nop>
cnoremap <down> <nop>
cnoremap <left> <nop>
cnoremap <right> <nop>
cnoremap <m-left> <nop>
cnoremap <m-right> <nop>
noremap <del> <nop>
inoremap <del> <nop>
cnoremap <del> <nop>

inoremap <c-a> <home>
cnoremap <c-a> <home>
inoremap <c-e> <end>
cnoremap <c-e> <end>
inoremap <c-b> <left>
cnoremap <c-b> <left>
inoremap <c-f> <right>
cnoremap <c-f> <right>
inoremap <c-d> <del>
cnoremap <c-d> <del>
inoremap <c-k> <c-o>D
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-k> <c-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>

noremap <silent> <m-d> <c-d>
inoremap <m-d> <c-o>dw
noremap <silent> <m-b> <c-b>
inoremap <m-b> <s-left>
noremap <silent> <m-f> <c-f>
inoremap <m-f> <s-right>
inoremap <m-bs> <c-w>
cnoremap <m-bs> <c-w>

" noremap <silent> <c-c> :enew<cr>
noremap <silent> <m-v> :vnew<cr>
noremap <silent> <m-V> :vsplit<cr>
noremap <silent> <m-s> :new<cr>
noremap <silent> <m-S> :split<cr>
noremap <silent> <c-n> <esc>:tabnew<cr>

noremap <silent> <m-q> :q<cr>
for tab_number in [1, 2, 3, 4, 5, 6, 7, 8]
  exe 'noremap <silent> <m-' . tab_number . '> :tabnext ' . tab_number . '<cr>'
endfor
noremap <c-h> gT
noremap <m-l> gt
noremap <silent> <m-}> :+tabmove<cr>
noremap <silent> <m-{> :-tabmove<cr>
noremap <silent> <leader>tc :silent! tabclose<cr>
noremap <silent> <leader>to :tabonly<cr>
noremap <silent> <leader>t# :tabedit #<cr>
noremap <silent> <leader>tt <c-w>T
noremap <silent> <leader>tn :tab split<cr>

noremap <leader>e :e $MYVIMRC<cr>

noremap <leader><leader> <C-^>
map [2 2[b
map [3 3[b
map ]2 2]b
map ]3 3]b

noremap <m-;> mCA;<esc>`C
inoremap <m-;> <C-o>A;
if has('nvim')
  noremap <m-,> mCA,<esc>`C
  inoremap <m-,> <C-o>A,
endif
noremap <m->> mCA.<esc>`C
imap <m->> <C-o>A.
imap <m-.> <C-o>A.
noremap <m-:> mCA:<esc>`C
inoremap <m-:> <C-o>A:

map <m-m> %
map <m-]> <c-]>
map <m-[> <c-t>
imap <m-_> <c-_>

noremap <leader>n <c-w>w
noremap <leader>p <c-w>W

noremap <silent> <leader>op :silent! exe '!open ' . getcwd()<cr>
noremap <silent> <leader>od :silent! exe '!open ' . expand('%:h')<cr>
noremap <silent> <leader>of :silent! exe '!open %'<cr>
noremap <silent> <leader>obr :silent! exe '!open -a "Google Chrome" %'<cr>
noremap <silent> <leader>or :e README*<cr>
noremap <silent> <leader>oR :vnew<cr>:e README*<cr>

noremap $ $ze

noremap g; g;zz
noremap g, g,zz
noremap gi gi<c-o>zz

noremap <leader>9 i<space><esc>l
noremap <leader>0 a<space><esc>h

map <leader>2 @
noremap <leader>22 @@
noremap @- @:
noremap <leader>2- @:
noremap <leader>1 :silent !
noremap <leader>5 :%!

noremap <leader>ft :set filetype=

nnoremap gV `[V`]

cabbrev tnew Tnew
cabbrev co copen
cabbrev qf copen
cabbrev lo lopen
cabbrev vn vnew
cabbrev en enew
cabbrev ne new
cabbrev sn new
cabbrev hn new
cabbrev v# vnew #

noremap zs zt
noremap z0 zs
nnoremap <expr> ze 'zzz'.(&scroll).'<CR>Hz'.(&scroll*2).'<CR><C-O>'
noremap z<Space> za

map gs gS
map gj gJ

noremap <silent> <m-_> :let t:zoomed=1<cr><c-w>10>
noremap <silent> <m-)> :let t:zoomed=1<cr><c-w>10<

" f17 is m-s-j in my config
nnoremap <silent> <f17> :move .+1<cr>
xnoremap <silent> <f17> :move '>+1<cr>gv
" f18 is m-s-k in my config
nnoremap <silent> <f18> :move .-2<cr>
xnoremap <silent> <f18> :move '<-2<cr>gv

noremap <silent> ]a :next<cr>
noremap <silent> [a :previous<cr>
noremap <silent> ]Q :clast<cr>
noremap <silent> [Q :cfirst<cr>
noremap <silent> ]L :llast<cr>
noremap <silent> [L :lfirst<cr>

"######################################
"### Plugins/functions key mappings ###
"######################################

inoremap <silent> <tab> <c-r>=TabComplete()<cr>
snoremap <silent> <tab> <esc>:call UltiSnips#JumpForwards()<cr>
inoremap <silent> <s-tab> <c-r>=UltiSnips#JumpBackwards()<cr>
snoremap <silent> <s-tab> <esc>:call UltiSnips#JumpBackwards()<cr>

nnoremap <expr> k Jumpable('gk')
nnoremap <expr> j Jumpable('gj')
xnoremap <expr> k Jumpable('gk')
xnoremap <expr> j Jumpable('gj')

nnoremap <silent> <esc> :nohlsearch<cr>:call ClearEverything()<cr>

noremap <silent> '' :call DisplayRegisters()<cr>

noremap <m-/> :call ShowHighlightsUnderCursor()<CR>
noremap <m-?> :call ShowAllHighlights()<CR>

noremap <silent> <c-p> :silent Files<cr>
noremap <silent> <leader>i :silent BTags<cr>
noremap <silent> <leader>I :silent Tags<cr>

if has('nvim')
  tnoremap <expr> <esc> &filetype == 'fzf' ? "\<c-g>" : "\<c-\>\<c-n>"
endif

noremap <silent> <f1> :NERDTreeToggle<CR>
noremap <silent> <leader><f1> :silent! NERDTreeFind<CR>

noremap <silent> <f2> :TagbarToggle<CR>
noremap <silent> <leader>ut :call ReadUndoFile()<cr>:GundoToggle<cr>

nmap cm <Plug>Commentary
nmap cmm <Plug>CommentaryLine
nmap cmu <Plug>Commentary<Plug>Commentary

noremap <silent> <leader>a :silent w<cr>:TestFile<cr>
noremap <silent> <leader>c :silent w<cr>:TestNearest<cr>
noremap <silent> <leader>l :silent w<cr>:TestLast<cr>
nnoremap <silent> <leader>m :exe 'e ' . GetTestAlternateFile()<cr>
nnoremap <silent> <leader>v :let t:file=expand('%')<cr>:vnew<cr>:exe 'e ' . GetTestAlternateFile(t:file)<cr>

noremap <leader>fmo :call MoveCurrentFile()<cr>
noremap <leader>fre :call RenameCurrentFile()<cr>
noremap <leader>fde :call DeleteCurrentFile()<cr>
noremap <leader>fdu :call DuplicateCurrentFile()<cr>
noremap <leader>fcp :call CopyCurrentFilePath()<cr>
noremap <leader>fcap :call CopyCurrentFileAbsolutePath()<cr>
noremap <leader>fcn :call CopyCurrentFileName()<cr>
noremap <leader>fn :call CreateNewFileInCurrentDir()<cr>
noremap <leader>fN :call CreateNewFile()<cr>

noremap <silent> <leader>fj :set filetype=json<cr>:%!jq '.'<cr>
xnoremap <silent> <leader>fj :!jq '.'<cr>
noremap <silent> <leader>fh :silent %!tidy -qi
  \ --show-errors 0 --force-output yes --tidy-mark no --wrap 0 --doctype omit<cr>
noremap <silent> <leader>fx :silent %!tidy -qi -xml --show-errors 0<cr>
" https://github.com/beautify-web/js-beautify
noremap <silent> <leader>fb :set filetype=javascript<cr>:%!js-beautify -s 2<cr>
xnoremap <silent> <leader>fb :!js-beautify -s 2<cr>

noremap <silent> <m--> :set virtualedit=all<cr>20zl
xnoremap <silent> <m--> 20zl
noremap <silent> <m-0> 20zh:call SetVirtualEdit()<cr>
xnoremap <silent> <m-0> 20zh
nnoremap <silent> ^ ^:set virtualedit=<cr>ze
nnoremap <silent> $ $:set virtualedit=<cr>ze

noremap <silent> <c-z> :call OnVimSuspend()<cr>:suspend<cr>:call OnVimResume()<cr>

noremap <m-t> :call ToggleQuotes()<cr>
inoremap <m-t> <c-o>:call ToggleQuotes()<cr>
cnoremap <m-t> <c-e><c-w>"" <left><left>

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map <silent> n <Plug>(incsearch-nohl-n)zz
map <silent> N <Plug>(incsearch-nohl-N)zz
map * <Plug>(incsearch-nohl-*)zz
map # <Plug>(incsearch-nohl-#)zz
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

map <leader>; `]]<space>
inoremap <f17> <esc>O
noremap <m-O> O<cr>

" map <f17> ]<space>
" inoremap <f17> <end><cr>
" map <f18> [<space>
" inoremap <f18> <esc>O

noremap <leader>ff :FileSearch -Q -i '' <left><left>
noremap <silent> <leader>yf :set opfunc=FileSearchVerb<CR>g@
map <leader>fw <leader>yfiw
map <leader>fW <leader>yfiW
xnoremap <leader>ff y:let @/ = GetSelectionForSearches()<cr><leader>ff<c-r>=@/<cr>
cnoremap <m-l> <end><space>-G '\.'<space><left><left>
cnoremap <c-g> <end><space>-G ''<space><left><left>
noremap <leader>fo :Gqfopen<cr>

noremap <leader>-- @:
noremap <leader>-b :call DeleteHiddenBuffers()<cr>
noremap <leader>-u :call ClearUndos()<cr>
noremap <leader>-k :call ResetProject()<cr>

map gR gr$
nmap cX cx$
nnoremap cc cc

noremap <silent> <leader>oo :silent call BrowseOldFiles()<cr>
noremap <silent> <leader>oh :silent Helptags<cr>
noremap <silent> <leader>om :call OpenMarkdownPreview()<cr>
noremap <silent> <leader>on :exe 'e ' . GetProjectNotes()<cr>
noremap <silent> <leader>oN :let t:file=expand('%')<cr>:vnew<cr>:exe 'e ' . GetProjectNotes(t:file)<cr>
noremap <silent> <leader>obk :call OpenCurrentFileBackupHistory()<cr>

noremap <leader>yq :call MakeSession()<cr>:qa!<cr>
noremap <leader>yl :call LoadSession()<cr>

nmap <silent> <leader>h <leader>yghiw
nmap <silent> <leader>H <leader>yhiW
nnoremap <silent> <leader>yh :set opfunc=HighlightOccurencesVerb<CR>g@
nnoremap <silent> <leader>ygh :set opfunc=HighlightWholeOccurencesVerb<CR>g@

nmap <silent> <leader>d <leader>ygdiw
nmap <silent> <leader>D <leader>ydiW
nnoremap <silent> <leader>yd :set opfunc=ChangeOccurenceVerb<CR>g@
nnoremap <silent> <leader>ygd :set opfunc=ChangeWholeOccurenceVerb<CR>g@

nnoremap <leader>x :%s/
nmap <leader>X <leader>yxiw
nnoremap <silent> <leader>yx :set opfunc=GlobalSubstituteVerb<CR>g@
nmap <leader>yX <leader>yxiW
nnoremap <leader>x <esc>:%s/<c-r>=GetSelectionForSearches()<cr>/

nnoremap <leader>s :s/
nmap <leader>S <leader>ysiw
nnoremap <silent> <leader>ys :set opfunc=SubstituteVerb<CR>g@
nmap <leader>yS <leader>ysiW
xnoremap <leader>s :s/\%V

nmap <leader>8 *
nmap <leader>, *
xmap <leader>8 *
nnoremap <silent> <leader>y8 :set opfunc=SearchNextOccurenceVerb<cr>g@
xnoremap * <esc>/<c-r>=GetSelectionForSearches()<cr><cr>
xnoremap # <esc>?<c-r>=GetSelectionForSearches()<cr><cr>

command! -nargs=+ -complete=file FileSearch call FileSearch(<q-args>)
command! -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, { 'options': $FZF_DEFAULT_OPTS })
command! -nargs=* BTags call fzf#vim#buffer_tags(<q-args>, { 'options': $FZF_DEFAULT_OPTS })
command! MakePlugSnapshot call MakePlugSnapshot()
command! Profile call Profile()
command! Gdiff call LazyLoadFugitive('Gdiff')
command! Glog call LazyLoadFugitive('Glog')
command! Gblame call LazyLoadFugitive('Gblame')
command! Gmodified call GitOpenModifiedFiles()

cabbrev plugi PlugInstall
cabbrev plugc PlugClean
cabbrev plugu PlugUpdate
cabbrev plugst PlugStatus
cabbrev plugs MakePlugSnapshot
cabbrev goyo Goyo
cabbrev gdiff Gdiff
cabbrev gd Gdiff
cabbrev glog Glog
cabbrev gb Gblame
cabbrev gm Gmodified

xnoremap @ :<C-u>call ExecuteMacroOnSelection()<cr>
xnoremap <leader>2 :<C-u>call ExecuteMacroOnSelection()<cr>

noremap <silent> <leader>th :call MoveToPrevTab()<cr>
noremap <silent> <leader>tl :call MoveToNextTab()<cr>
noremap <silent> <leader>tr :call RenameTab()<cr>
noremap <silent> <m-.> :call GoToLastActiveTab()<cr>

nnoremap <silent> <Leader>b :BufExplorerHorizontalSplit<cr>

cnoremap <expr> <m-d> EnhancedMetaDeleteRight()
cnoremap <expr> <m-b> EnhancedMetaLeft()
cnoremap <expr> <m-f> EnhancedMetaRight()

noremap <silent> <leader>j :call Join()<cr>

nnoremap <silent> zn :call ToggleFoldSyntax()<cr>

" nnoremap <silent> <f4> :silent w<cr>:VtrSendCommandToRunner<cr>
" imap <silent> <f4> <esc><f4>

noremap <silent> <m-=> :call ToggleZoom()<cr>
noremap <silent> <m-+> :call ToggleZoom()<cr>

noremap <silent> <m-N> <esc>:tabnew<cr>:call BrowseOldFiles()<cr>

noremap <silent> gf :call ImprovedGoToFile()<cr>

noremap ga= :Tabularize /=<cr>
noremap ga<bar> :Tabularize /<bar><cr>
map gat ga<bar>
noremap ga<space> :Tabularize / /l0<cr>

noremap <silent> ]b :BufferHistoryForward<cr>
noremap <silent> [b :BufferHistoryBack<cr>
noremap <silent> ]B :call BufferHistoryLast()<cr>
noremap <silent> [B :call BufferHistoryFirst()<cr>
map <silent> ]<space> <Plug>InsertLineAfter
map <silent> [<space> <Plug>InsertLineBefore
noremap <silent> ]f :<c-u>call CycleToNextFile(v:count1)<cr>
noremap <silent> [f :<c-u>call CycleToNextFile(-v:count1)<cr>
noremap <silent> ]F :<c-u>execute CycleToNextFile(-1, 1)<cr>
noremap <silent> [F :<c-u>execute CycleToNextFile(0, 1)<cr>
noremap ]e :<c-u>exe 'e ' . GetNextFile(1)<cr>
noremap [e :<c-u>exe 'e ' . GetNextFile(-1)<cr>
noremap <silent> ]q :call QfListNext('next')<cr>
noremap <silent> [q :call QfListNext('previous')<cr>
noremap <silent> ]l :call LocListNext('next')<cr>
noremap <silent> [l :call LocListNext('previous')<cr>

"#############################
"### General configuration ###
"#############################

set nocompatible
filetype plugin indent on
if !exists('syntax_on')
  syntax on
endif
if !exists('g:colors_name')
  colorscheme railscasts_custom
endif
set termguicolors
set guicursor=a:block-blinkon0
set fileformat=unix
set number relativenumber numberwidth=5
set expandtab tabstop=2 shiftwidth=2 autoindent smarttab
set incsearch ignorecase smartcase hlsearch
set noshowmatch
set nrformats-=octal
set noerrorbells visualbell t_vb= belloff=all
set history=500
set backspace=indent,eol,start
set shortmess+=Ic
set laststatus=2
set mouse=a
set title titlestring=%{GetProjectName()}
set splitbelow splitright
set nowrap
set noswapfile
set clipboard=unnamed
set hidden
set notimeout
set textwidth=0 colorcolumn=80
set ruler
set tags+=./.tags;
set showcmd
set autoread
set nostartofline
set wildmenu
set complete=.,w
" set complete=.,w,b,u,t
set grepprg=ag
set gdefault
set fillchars+=vert:\ "
set nofoldenable
set foldtext=GetFoldText()
" set foldmethod=indent
" set foldlevelstart=1
" set foldlevelstart=99
set tabline=%!GetTabLine()
set pumheight=8
set nojoinspaces
set sessionoptions-=options
set sidescroll=1 sidescrolloff=3
set wildignorecase
set diffopt=vertical,filler,foldcolumn:0
set whichwrap=b,s,h,l
set synmaxcol=1000
set showtabline=2
set regexpengine=1
set wildignore=.DS_Store,.localized,.tags,.keep,*.pyc,*.class

set statusline=
set statusline+=\ %<%f
set statusline+=\ %{&modified?'[+]':''}
set statusline+=%h%r
set statusline+=%=
set statusline+=%{GetLintMsg()}
set statusline+=%{GetCustomStatusMsg()}
set statusline+=\ \ %-14(%l,%c%)
set statusline+=\ %-10(%LL%)
set statusline+=\ \ %P

let undodir = expand('~/.vim/tmp/undo')
if !isdirectory(undodir)
  call mkdir(undodir, 'p')
endif
set undodir=~/.vim/tmp/undo

if has('nvim')
  set scrollback=-1
endif
if has('gui_running')
  set guifont=Menlo:h14 linespace=3
  hi Cursor guifg=white guibg=red
endif

let html_no_rendering = 1
let g:html_indent_inctags = 'p,main'
let g:html_indent_script1 = 'inc'
let g:html_indent_style1 = 'inc'
let g:python_host_prog  = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:vim_indent_cont = &sw
let g:is_bash = 1

"#############################
"### Plugins configuration ###
"#############################

let g:fzf_layout = {
  \ 'window': 'let g:launching_fzf = 1 | keepalt topleft 100split enew'
  \ }
let g:fzf_colors = {
  \ 'fg':        ['fg', 'Normal'],
  \ 'bg':        ['bg', 'Normal'],
  \ 'fg+':       ['fg', 'Normal'],
  \ 'bg+':       ['bg', 'Normal'],
  \ 'hl':        ['fg', 'Statement'],
  \ 'hl+':       ['fg', 'Statement'],
  \ 'pointer':   ['fg', 'Statement']
  \ }
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'alt-t': 'tab split',
  \ 'ctrl-v': 'vsplit',
  \ 'alt-v': 'vsplit',
  \ 'alt-s': 'split'
  \ }
let g:fzf_history_dir = '~/.fzf_history'
let $FZF_DEFAULT_COMMAND = 'ag --skip-vcs-ignores --hidden -g ""'
let $FZF_DEFAULT_OPTS .=
  \ ' --no-bold --color="info:#2f2f2f,spinner:#2f2f2f" --prompt="  "'
  \ . ' --bind="ctrl-j:accept,ctrl-n:down,ctrl-p:up,ctrl-o:previous-history,ctrl-i:next-history"'

let g:netrw_altfile = 1

let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let NERDTreeRespectWildIgnore = 1
let NERDTreeIgnore = [
  \ '\.rubocop-http', '\.notes$',
  \
  \ '^\.svn$', '^\.git$', '^\.hg$', '^\CVS$', '^\.idea$', '^\.sass-cache$',
  \ '^tmp$', '^log$', '\^coverage$', '^node_modules$'
  \ ]
let NERDTreeQuitOnOpen = 1
let NERDTreeHighlightCursorline = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeCreatePrefix='silent keepalt keepjumps'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeHijackNetrw = 0
let NERDTreeMapCWD = 'cd'
let NERDTreeMapChdir = 'CD'
let NERDTreeMapChangeRoot = 'd'

let g:incsearch#auto_nohlsearch = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 0

let g:test#strategy = 'custom'

let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
let g:tagbar_map_showproto = '<nop>'

let g:gundo_help = 0

let g:rails_no_syntax = 1
let g:rails_single_quotes_style = 1
let g:unimpaired_no_toggling = 1

let g:UltiSnipsSnippetDirectories=['my-snippets']
let g:UltiSnipsExpandTrigger = '<nul>'
let g:UltiSnipsListSnippets = '<nul>'
let g:UltiSnipsJumpForwardTrigger = '<nul>'
let g:UltiSnipsJumpBackwardTrigger = '<nul>'

let g:user_emmet_mode = 'i'
let g:user_emmet_settings = {
  \ 'variables': {
  \   'charset': 'utf-8',
  \ },
  \ 'css': {
  \   'snippets': {
  \     'pos': 'position:|;',
  \     'pos:s': 'position:static;',
  \     'pos:a': 'position:absolute;',
  \     'posa': 'position:absolute;',
  \     'pos:r': 'position:relative;',
  \     'pos:f': 'position:fixed;',
  \     'd': 'display:|;',
  \     'db': 'display:block|;',
  \     'w100': 'width:100%|;',
  \     'h100': 'height:100%|;',
  \     'v': 'visibility:|;',
  \     'ov': 'overflow:|;',
  \     'ovx': 'overflow-x:|;',
  \     'ovy': 'overflow-y:|;',
  \     'ovs': 'overflow-style:|;',
  \     'bxz': 'box-sizing:|;',
  \     'mar': 'max-resolution:|;',
  \     'mir': 'min-resolution:|;',
  \     'olc': 'outline-color:#|;',
  \     'bdc': 'border-color:#|;',
  \     'bdf': 'border-fit:|;',
  \     'bdt+': 'border-top:|;',
  \     'bdtc': 'border-top-color:#|;',
  \     'bdr+': 'border-right:|;',
  \     'bdrc': 'border-right-color:#|;',
  \     "bdb+": 'border-bottom:|;',
  \     'bdbc': 'border-bottom-color:#|;',
  \     'bdl+': 'border-left:|;',
  \     'bdlc': 'border-left-color:#|;',
  \     'bg': 'background:#|;',
  \     'bg+': 'background:|;',
  \     'bgc': 'background-color:#|;',
  \     'bgp': 'background-position:|;',
  \     'bgcp': 'background-clip:|;',
  \     'c': 'color:#|;',
  \     'c:r': 'color:rgb(|);',
  \     'c:ra': 'color:rgba(|);',
  \     'cm': '/* || */',
  \     'va': 'vertical-align:|;',
  \     'ta': 'text-align:|;',
  \     'td': 'text-decoration:|;',
  \     'tov': 'text-overflow:|;',
  \     'to+': 'text-outline:|;',
  \     'tt': 'text-transform:|;',
  \     'wm': 'writing-mode:|;',
  \     'f+': 'font:|;',
  \     'fs': 'font-style:|;',
  \     'cur': 'cursor:|;',
  \     'us': 'user-select:|;',
  \   },
  \ },
  \ 'javascript.jsx' : {
  \   'extends' : 'jsx'
  \ },
  \ }

let g:bufExplorerDisableDefaultKeyMapping = 1
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSplitHorzSize = 15
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowTabBuffer = 1
let g:bufExplorerShowNoName = 1
hi link bufExplorerAltBuf bufExplorerCurBuf

let g:session_directory = '~/.vim/tmp/sessions'
let g:session_lock_enabled = 0
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_menu = 0

let s:repls = {
  \ 'ruby': 'irb --simple-prompt',
  \ 'python': 'python -ic ""'
  \ }

let g:neomake_verbose = 0
let g:neomake_place_signs = 0
let g:neomake_html_enabled_makers = []
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']
let g:neomake_sh_enabled_makers = ['sh']
let g:neomake_highlight_columns = 0
call neomake#configure#automake('rw', 1000)

let s:last_active_tab_number = 1

let g:tmux_navigator_no_mappings = 1

let g:jsx_ext_required = 0

let g:mta_filetypes = {
  \ 'html': 1,
  \ 'eruby.html': 1,
  \ 'xml': 1,
  \ 'javascript.jsx': 1
  \ }

call operator#sandwich#set('all', 'all', 'highlight', 0)
runtime plugged/vim-sandwich/macros/sandwich/keymap/surround.vim

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0

let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_ctags_auto_set_tags = 0

let g:splitjoin_ruby_hanging_args = 0
let g:splitjoin_ruby_curly_braces = 0

let g:polyglot_disabled = ['yaml']
let g:markdown_syntax_conceal = 0

let g:vdebug_options = {}
let g:vdebug_options['break_on_open'] = 0
let g:vdebug_options['watch_window_style'] = 'compact'
let g:vdebug_keymap = {
  \ 'set_breakpoint': '<leader>ub',
  \ 'run': '<leader>uu',
  \ 'eval_visual': '<leader>ue',
  \ 'eval_under_cursor': '<leader>ue',
  \ 'get_context': '<leader>ur',
  \ 'detach': '<leader>ud',
  \ 'step_over': '<down>',
  \ 'step_into': '<right>',
  \ 'step_out': '<left>',
  \ 'run_to_cursor': '<s-up>',
  \ 'close': 'q'
  \ }

"#################
"### Functions ###
"#################

function! TabComplete()
  call UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return ''
  elseif IsEmmetExpandable()
    return emmet#expandAbbr(0, '')
  else
    return "\<tab>"
  endif
endfunction

function! Jumpable(command)
  return (v:count > 5 ? "m'" . v:count : '') . a:command
endfunction

function! IsEmmetExpandable()
  if &filetype !~ 'html\|css\|jsx' | return 0 | endif
  if !emmet#isExpandable() | return 0 | endif
  if &filetype =~ 'css' | return 1 | endif

  let expr = matchstr(getline('.')[:col('.')], '\(\S\+\)$')
  return expr =~ '[.#>+*]' || index(s:emmetElements, expr) >= 0
endfunction

let s:emmetElements = [
  \ 'a', 'abbr', 'acronym', 'address', 'applet', 'area', 'article',
  \ 'aside', 'audio', 'b', 'base', 'basefont', 'bdi', 'bdo', 'big',
  \ 'blockquote', 'body', 'br', 'button', 'canvas', 'caption', 'center',
  \ 'cite', 'code', 'col', 'colgroup', 'datalist', 'dd', 'del', 'details',
  \ 'dfn', 'dialog', 'dir', 'div', 'dl', 'dt', 'em', 'embed', 'fieldset',
  \ 'figcaption', 'figure', 'font', 'footer', 'form', 'frame', 'frameset',
  \ 'head', 'header', 'hr', 'html', 'i', 'iframe', 'img', 'input',
  \ 'ins', 'kbd', 'keygen', 'label', 'legend', 'li', 'link', 'main', 'map',
  \ 'mark', 'menu', 'menuitem', 'meta', 'meter', 'nav', 'noframes',
  \ 'noscript', 'object', 'ol', 'optgroup', 'option', 'output', 'p',
  \ 'param', 'pre', 'progress', 'q', 'rp', 'rt', 'ruby', 's', 'samp',
  \ 'script', 'section', 'select', 'small', 'source', 'span', 'strike',
  \ 'strong', 'style', 'sub', 'summary', 'sup', 'table', 'tbody', 'td',
  \ 'textarea', 'tfoot', 'th', 'thead', 'time', 'title', 'tr', 'track',
  \ 'tt', 'u', 'ul', 'var', 'video', 'wbr', 'template',
  \ 'h1', 'h2', 'h3', 'h4', 'h6',
  \
  \ 'emb', 'btn', 'sty', 'dlg', 'fst', 'fig', 'leg', 'tarea', 'hdr', 'cmd',
  \ 'colg', 'art', 'fset', 'src', 'prog', 'bq', 'kg', 'adr' , 'cap',
  \ 'datag', 'datal', 'sect', 'str', 'obj', 'ftr', 'optg', 'ifr', 'out',
  \ 'det', 'acr', 'opt'
  \ ]

function! ClearEverything()
  match
  ccl
  lcl
  silent! call CloseTests()
  silent! NERDTreeClose
  silent! TagbarClose
  normal cxc
  call ClearMessages()
  " pclose
endfunction

function! ClearMessages()
  call feedkeys(":\<bs>")
endfunction

function! DisplayRegisters()
  redir => output
  silent exe 'reg "0123456789'
  redir END
  new
  silent file [Registers]
  setlocal nonumber norelativenumber colorcolumn=
  setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
  silent put =output
  silent normal gg"_d2j
  exe 'resize' . line('$')
  map <silent> <buffer> q :q<cr>
  map <silent> <buffer> <esc> q
endfunction

function! ShowHighlightsUnderCursor()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

function! ShowAllHighlights()
  redir @z
  silent hi
  redir END
  tabnew
  setlocal buftype=nofile
  normal "zpdd
endfunction

function! Autowrite()
  if &modified
    silent! wa
    silent! GutentagsUpdate
  endif
endfunction

function! OnNERDTreeInit()
  let t:nerdtree_winnr = bufwinnr('%')
  call ResetNERDTreePreview()
  normal! j
endfunction

function! ResetNERDTreePreview()
  let t:original_bufnum = 0
  if exists('t:last_bufnum') | let t:original_bufnum = t:last_bufnum | endif
  let t:escaped_nerdtree = 0
  let b:previous_preview_bufnum = 0
  let b:previous_preview_bufnum_to_close = 0
endfunction

function! NERDTreePreviewOrOpen()
  let current_path = g:NERDTreeFileNode.GetSelected().path
  if current_path.isDirectory
    call nerdtree#ui_glue#invokeKeyMap('o') | return
  endif
  let filename = current_path.str({ 'format': 'Edit' })
  let bfilename = '^' . filename . '$'
  let should_close_buffer_next_time = bufnr(bfilename) <= 0
  if bufnr(bfilename) == b:previous_preview_bufnum && bufnr(bfilename) > 0
    wincmd w
    return
  endif
  normal go
  if b:previous_preview_bufnum_to_close > 0
    if b:previous_preview_bufnum_to_close != t:original_bufnum
      exe 'bwipeout ' . b:previous_preview_bufnum_to_close
    endif
    let b:previous_preview_bufnum_to_close = 0
  endif
  if should_close_buffer_next_time
    let b:previous_preview_bufnum_to_close = bufnr(bfilename)
  endif
  let b:previous_preview_bufnum = bufnr(bfilename)
endfunction

function! LeaveNERDTreePreview()
  if !exists('t:original_bufnum') | return | endif
  if t:original_bufnum > 0 && t:original_bufnum != bufnr('%')
    if t:escaped_nerdtree
      exe 'b ' . t:original_bufnum
    elseif @# == ''
      silent! let @# = t:original_bufnum
    endif
  endif
  let t:escaped_nerdtree = 0
endfunction

function! EscapeNERDTree()
  let t:escaped_nerdtree = 1
  q
endfunction

function! CloseNERDTree()
  q
  if len(tabpagebuflist()) == 1 && exists('b:startup_buffer')
    \ && IsCurrentBufferNew() && !&modified
    q
  endif
endfunction

function! PreventBuffersInNERDTree()
  if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree'
    \ && exists('t:nerdtree_winnr') && bufwinnr('%') == t:nerdtree_winnr
    \ && &buftype == '' && !exists('g:launching_fzf')
    let bufnum = bufnr('%')
    silent! close
    exe 'b ' . bufnum
  endif
  if exists('g:launching_fzf') | unlet g:launching_fzf | endif
endfunction

function! DeleteCurrentFile()
  let answer = input('Delete current file? ', 'y')
  if answer == 'y'
    exec ':silent !rm ' . expand('%')
  endif
endfunction

function! MoveCurrentFile()
  let old_file = expand('%')
  let new_file = input('New location: ', old_file, 'file')
  if new_file != '' && new_file != old_file
    let alternate_buffer = @#
    if bufexists(new_file) | exec 'bd! ' . new_file | endif
    exec ':silent !mkdir -p `dirname ' . new_file . '`'
    exec ':silent !mv ' . old_file . ' ' . new_file
    exec ':edit! ' . new_file
    exec 'bd! ' . old_file
    if bufexists(alternate_buffer) | let @# = alternate_buffer | endif
  endif
endfunction

function! RenameCurrentFile()
  let old_name = expand('%:t')
  let new_name = input('New name: ', old_name, 'file')
  if new_name != '' && new_name != old_name
    let dir = expand('%:h')
    let old_file = expand('%')
    let new_file = (dir == '.') ? (new_name) : (dir . '/' . new_name)
    if new_file != old_file
      let alternate_buffer = @#
      if bufexists(new_file) | exec 'bd! ' . new_file | endif
      exec ':silent !mv ' . old_file . ' ' . new_file
      exec ':edit! ' . new_file
      exec 'bd! ' . old_file
      if bufexists(alternate_buffer) | let @# = alternate_buffer | endif
    endif
  endif
endfunction

function! DuplicateCurrentFile()
  let old_file = expand('%')
  let new_file = input('Duplicate as: ', old_file, 'file')
  if new_file != '' && new_file != old_file
    if bufexists(new_file) | exec 'bd! ' . new_file | endif
    exec ':saveas! ' . new_file
  endif
endfunction

function! CopyCurrentFilePath()
  let @+=expand('%')
endfunction

function! CopyCurrentFileAbsolutePath()
  let @+=expand('%:p')
endfunction

function! CopyCurrentFileName()
  let @+=expand('%:t')
endfunction

function! CreateNewFile()
  let new_file = input('New file: ', '', 'file')
  if new_file != ''
    exec ':e ' . new_file
    w
  endif
endfunction

function! CreateNewFileInCurrentDir()
  let path = expand('%:h')
  if path == '.'
    let path = ''
  endif
  if path != ''
    let path .= '/'
  endif

  let new_file = input('New file: ', path, 'file')
  if new_file != '' && new_file != path
    exec ':e ' . new_file
    w
  endif
endfunction

function! GetTestAlternateFile(...)
  if a:0
    let current_file = a:1
  else
    let current_file = expand('%')
  endif
  let alternate_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1
    \ || match(current_file, '\<models\>') != -1
    \ || match(current_file, '\<views\>') != -1
    \ || match(current_file, '\<helpers\>') != -1
    \ || match(current_file, '\<jobs\>') != -1
    \ || match(current_file, '\<mailers\>') != -1
    \ || match(current_file, '\<services\>') != -1
  if going_to_spec
    let alternate_file = substitute(alternate_file, '^app/', '', '')
    let alternate_file = substitute(alternate_file, '\.e\?rb$', '_spec.rb', '')
    let alternate_file = 'spec/' . alternate_file
  else
    let alternate_file = substitute(alternate_file, '_spec\.rb$', '.rb', '')
    let alternate_file = substitute(alternate_file, '^spec/', '', '')
    if in_app
      let alternate_file = 'app/' . alternate_file
    end
  endif
  return alternate_file
endfunction

function! ToggleQuotes()
  let before = getline('.')[col('^'):(col('.')-1)]
  let after = getline('.')[(col('.')):col('$')]
  normal mC
  if before =~ '""$'
    normal hxxi''
  elseif before =~ '"$' && after =~ '^"'
    normal xxi''
  elseif before =~ "''$"
    normal hxxi""
  elseif before =~ "'$" && after =~ "^'"
    normal xxi""
  elseif before =~ '"' && after =~ '"'
    normal cs"'
  elseif before =~ "'" && after =~ "'"
    normal cs'"
  end
  normal `C
endfunction

function! OnVimSuspend()
  silent! wa
endfunction

function! OnVimResume()
  silent! checktime
endfunction

function! OnTestDisplayed()
  noremap <silent><buffer> <leader>q <c-w>p:call CloseTests()<cr>
  map <silent><buffer> <esc> <leader>q
  map <silent><buffer> q <esc>
  noremap <silent><buffer> <cr> :call OpenFileInPreviousWindow(0)<cr>
  noremap <silent><buffer> o :call OpenFileInPreviousWindow(1)<cr><c-w>p
endfunction

function! OpenFileInPreviousWindow(highlight_line)
  let file_and_line = GetFileAndLineUnderCursor()
  if !empty(file_and_line)
    wincmd p
    exe 'e ' . file_and_line[0]
    exe file_and_line[1]
    normal zz
    if a:highlight_line
      exe 'match Search /\%' . file_and_line[1] . 'l/'
    endif
  endif
endfunction

function! GetFileAndLineUnderCursor()
  " let matches = matchlist(getline('.'), '\([\S^:]\+\):\(\d*\)')
  normal mC^f:
  let items = split(expand('<cWORD>'), ':')
  normal `C
  if len(items) >= 2 && filereadable(items[0])
    return items[0:1]
  endif
endfunction

function! OnFileSearchDisplayed()
  noremap <silent><buffer> <cr> :call OpenFileSearchResult(0)<cr>
  nmap <buffer> o <cr>
  " noremap <silent><buffer> t :call OpenFileSearchResult(1)<cr>
endfunction

function! OpenFileSearchResult(new_tab)
  if getline('.') == '' | return | endif
  let line = matchstr(getline('.'), '^\d\+')
  normal mC
  if line != ''
    normal {
    if getline('.') == ''
      normal j
    endif
  endif
  let file = getline('.')
  normal `C
  if file != ''
    if a:new_tab | tabnew | endif
    exe 'e ' . file
    if line != ''
      exe line
    endif
  endif
endfunction

function! FileSearch(search_options)
  if IsCurrentBufferNew() || bufname('%') =~ 'ag -C \|NERD_tree_1'
    enew
  else
    tabnew
  endif

  let single_quote_pos = match(a:search_options, "'")
  let double_quote_pos = match(a:search_options, '"')
  let single_quote_search = single_quote_pos >= 0
  if single_quote_pos >=0 && double_quote_pos >= 0
    let single_quote_search = single_quote_pos < double_quote_pos
  endif
  let search_text = ''
  if single_quote_search
    let search_text = matchstr(a:search_options, "\\v'\\zs.{-}\\ze'")
  else
    let search_text = matchstr(a:search_options, "\\v\"\\zs.{-}\\ze(\\\\)\@<!\"")
  endif
  let @/ = search_text

  let query = 'ag -C ' . a:search_options
  call setqflist([], ' ', { 'title': query })
  let opts = {}
  let opts.file = ''
  let opts.files_matched = 0
  let opts.lines_matched = 0
  function! opts.on_stdout(job_id, data, event)
    for line in a:data
      let escaped_line = substitute(line, '\(\e\[\(\d\{1,2}\(;\d\{1,2}\)\?\)\?[mK]\|\r\)', '', 'g')
      if line =~ '^\e\[1;32m'
        let self.file = escaped_line
        let self.files_matched += 1
        continue
      end
      let matches = matchlist(escaped_line, '^\(\d\+\):\(.*\)')
      if len(matches)
        call setqflist([{
          \ 'filename': self.file,
          \ 'lnum': matches[1],
          \ 'text': matches[2]
          \ }], 'a')
        let self.lines_matched += 1
      endif
      let b:custom_status_msg =
        \ self.lines_matched . ' matches, ' . self.files_matched . ' files'
    endfor
  endfunction
  call termopen(query, opts)
endfunction

function! ResetProject()
  for num in range(1, bufnr('$'))
    if buflisted(num) && bufname(num) != 'NERD_tree_1'
      silent exec 'silent bd! ' . num
    endif
  endfor
  let b:startup_buffer = 1
  call ClearMessages()
  if bufexists('NERD_tree_1')
    NERDTreeFocus
    normal ggX^j
  else
    NERDTree
  endif
endfunction

function! ClearUndos()
  let v = winsaveview()
  set undoreload=0
  silent edit!
  call winrestview(v)
  echo 'Undos cleared.'
endfunction

function! DeleteHiddenBuffers()
  let open_buffers = []
  for i in range(tabpagenr('$'))
    call extend(open_buffers, tabpagebuflist(i + 1))
  endfor

  for num in range(1, bufnr('$') + 1)
    if buflisted(num) && index(open_buffers, num) == -1
      exec 'bd! ' . num
    endif
  endfor
endfunction

function! WriteUndoFile()
  let undofile = escape(undofile(expand('%')), '%')
  exec 'wundo ' . undofile
endfunction

function! ReadUndoFile()
  let undofile = undofile(expand('%'))
  if filereadable(undofile)
    let undofile = escape(undofile,'%')
    exec 'rundo ' . undofile
  endif
endfunction

let s:custom_backup_dir='~/.vim_custom_backups'
function! BackupCurrentFile()
  if !isdirectory(expand(s:custom_backup_dir))
    let cmd = 'mkdir -p ' . s:custom_backup_dir . ';'
    let cmd .= 'cd ' . s:custom_backup_dir . ';'
    let cmd .= 'git init;'
    call system(cmd)
  endif
  let file = expand('%:p')
  if file =~ fnamemodify(s:custom_backup_dir, ':t') | return | endif
  let file_dir = s:custom_backup_dir . expand('%:p:h')
  let backup_file = s:custom_backup_dir . file
  let cmd = ''
  if !isdirectory(expand(file_dir))
    let cmd .= 'mkdir -p ' . file_dir . ';'
  endif
  let cmd .= 'cp ' . file . ' ' . backup_file . ';'
  let cmd .= 'cd ' . s:custom_backup_dir . ';'
  let cmd .= 'git add ' . backup_file . ';'
  let cmd .= 'git commit -m "Backup - `date`";'
  call jobstart(cmd)
endfunction

function! OpenCurrentFileBackupHistory()
  let backup_dir = expand(s:custom_backup_dir . expand('%:p:h'))
  let cmd = 'tmux split-window -h -c "' . backup_dir . '"\; '
  let cmd .= 'send-keys "glop --since=\"1 month ago\" ' . expand('%:t') . '" C-m'
  call system(cmd)
endfunction

function! CloseTests()
  if exists('t:term_test_bufnum') && bufexists(t:term_test_bufnum)
    exe 'bd! ' . t:term_test_bufnum
    unlet t:term_test_bufnum
  endif
endfunction

function! NewPlaygroundBuffer(file_type)
  if bufexists('[playground]')
    bd! \[playground\]
  endif
  if IsCurrentBufferNew()
    enew
  else
    tabnew
  endif
  file [playground]
  setlocal buftype=nofile
  exe 'set filetype=' . a:file_type
endfunction

function! IsCurrentBufferNew()
  return bufname('%') == '' && IsCurrentBufferEmpty()
endfunction

function! GitOpenModifiedFiles()
  silent only
  let status = system('git status -s | remove-colors | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
  let filenames = split(status, "\n")
  if empty(filenames) | echo 'No modified files!' | return | endif
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
  wincmd w
endfunction

function! ShowLatestMigration()
  let alternate_buffer = bufnr('%')
  enew
  set ft=ruby
  exec ':Emigration'
  if bufexists(alternate_buffer) | let @# = alternate_buffer | endif
endfunction

function! ExtractRailsPartial()
  let name = input('Partial name: ', '')
  if name != ''
    exec "'<,'>Rextract " . name
  endif
endfunction

function! OpenMarkdownPreview()
  if !exists('s:markdown_preview_job')
    let s:markdown_preview_job = jobstart('grip')
  endif
  silent exec '!open http://localhost:6419/' . expand('%')
endfunction

function! MakeSession()
  exe ':silent SaveSession! ' . GetProjectName()
  echo 'Session saved.'
endfunction

function! LoadSession()
  exe ':silent OpenSession ' . GetProjectName()
  echo 'Session loaded.'
endfunction

function! HighlightOccurencesVerb(type)
  exe 'normal! `[v`]y'
  let @/ = EscapeStringForSearches(@")
  exe 'match Search /' . @/ . '/'
endfunction

function! HighlightWholeOccurencesVerb(type)
  exe 'normal! `[v`]y'
  let @/ = '\<' . EscapeStringForSearches(@") . '\>'
  exe 'match Search /' . @/ . '/'
endfunction

function! ChangeOccurenceVerb(type)
  exe 'normal! `[v`]y'
  let @/ = EscapeStringForSearches(@")
  exe 'match Search /' . @/ . '/'
  call feedkeys('cgn', 'n')
endfunction

function! ChangeWholeOccurenceVerb(type)
  exe 'normal! `[v`]y'
  let @/ = '\<' . EscapeStringForSearches(@") . '\>'
  exe 'match Search /' . @/ . '/'
  call feedkeys('cgn', 'n')
endfunction

function! FileSearchVerb(type, ...)
  exe 'normal! `[v`]y'
  let @/ = @"
  let cmd = ":FileSearch -i -Q '" . @/ . "' \<left>\<left>"
  call feedkeys(cmd, 'n')
endfunction

function! GlobalSubstituteVerb(type, ...)
  exe 'normal! `[v`]y'
  let @/ = @"
  call feedkeys(':%s/' . @/ . '/', 'n')
endfunction

function! SubstituteVerb(type, ...)
  exe 'normal! `[v`]y'
  let @/ = @"
  call feedkeys(':s/' . @/ . '/', 'n')
endfunction

function! SearchNextOccurenceVerb(type, ...)
  exe 'normal! `[v`]y'
  let @/ = EscapeStringForSearches(@")
  call feedkeys('n', 'n')
endfunction

function! GetSelectionForSearches() range
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&

  normal! ""gvy
  let selection = getreg('"')

  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  let escaped_selection = EscapeStringForSearches(selection)

  return escaped_selection
endfunction

function! EscapeStringForSearches(string)
  let string=a:string
  let string = escape(string, '^$.*\/~[]')
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction

function! ExecuteMacroOnSelection()
  exe ":'<,'>normal @" . nr2char(getchar())
endfunction

function! OnGoyoEnter()
  silent !tmux set status off
endfunction

function! OnGoyoLeave()
  silent !tmux set status on
endfunction

function! SetVirtualEdit()
  python import vim
  let absolute_col = virtcol('.') + pyeval('vim.current.window.col')
  let absolute_col += &foldcolumn + (&number ? &numberwidth : 0)
  let is_on_leftmost_screen = screencol() == absolute_col

  if is_on_leftmost_screen
    setlocal virtualedit=
  else
    setlocal virtualedit=all
  endif
endfunction

function! MoveToPrevTab()
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    vnew
  else
    close!
    exe "0tabnew"
  endif
  exe "b".l:cur_buf
endfunction

function! MoveToNextTab()
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    vnew
  else
    close!
    tabnew
  endif
  exe "b".l:cur_buf
endfunc

function! EnhancedMetaLeft()
  let line = getcmdline()
  let pos = getcmdpos()
  let next = 1
  let nextnext = 1
  let i = 2
  while nextnext < pos
    let next = nextnext
    let nextnext = match(line, '\<\S\|\>\S\|\s\zs\S\|^\|$', 0, i) + 1
    let i += 1
  endwhile
  return repeat("\<Left>", pos - next)
endfunction

function! EnhancedMetaRight()
  return AbstractRight("\<Right>")
endfunction

function! AbstractRight(command)
  let line = getcmdline()
  let pos = getcmdpos()
  let next = 1
  let i = 2
  while next <= pos && next > 0
    let next = match(line, '\<\S\|\>\S\|\s\zs\S\|^\|$', 0, i) + 1
    let i += 1
  endwhile
  return repeat(a:command, next - pos)
endfunction

function! EnhancedMetaDeleteRight()
  return AbstractRight("\<Right>\<BS>")
endfunction

function! RenameTab()
  let tab_name = input('Tab name: ', '')
  call settabvar(tabpagenr(), 'tab_name', tab_name)
  set showtabline=1
endfunction

function! Join()
  let previous_last_char = getline('.')[col('$')-2]
  normal! J
  let current_char = getline('.')[col('.')-1]
  if previous_last_char =~ '(\|[\' && current_char == ' '
    normal x
  endif
endfunction

function! ToggleFoldSyntax()
  if &foldmethod == 'manual'
    setl foldenable
    setl foldlevel=1
    setl foldmethod=syntax
  else
    setl foldmethod=manual
    normal zR
  endif
endfunction

function! MakePlugSnapshot()
  PlugSnapshot! ~/.vim/plug_snapshot.vim
endfunction

function! ToggleZoom()
  if !exists('t:zoomed') | let t:zoomed = 0 | endif
  if t:zoomed
    wincmd =
    let t:zoomed = 0
  else
    wincmd |
    wincmd _
    let t:zoomed = 1
  endif
endfunction

function! GetProjectNotes(...)
  if a:0
    let file_path = a:1
  else
    let file_path = expand('%:p')
  endif
  let project_path = getcwd()
  let relative_file_path = substitute(file_path, '^' . project_path . '/', '', '')
  if file_path != ''
    \ && (file_path !~ ('^' . project_path) || relative_file_path != expand('%'))
    let project_path = expand('~')
  endif
  return project_path . '/.notes'
endfunction

function! TrimTrailingWhitespace()
  if &filetype =~ 'markdown\|snippet' | return | endif
  let l = line('.')
  let c = col('.')
  %s/\s\+$//e
  call cursor(l, c)
endfunction

function! GetLintMsg()
  let counts = neomake#statusline#LoclistCounts()
  let error_count = get(counts, 'E', 0) + get(counts, 'I', 0)
  let warning_count = get(counts, 'W', 0)
  if error_count + warning_count == 0 | return '' | endif

  let count_msgs = []
  if error_count > 0 | call add(count_msgs, 'E:' . error_count) | endif
  if warning_count > 0 | call add(count_msgs, 'W:' . warning_count) | endif
  return '[' . join(count_msgs, ',') . ']'
endfunction

function! GetCustomStatusMsg()
  if !exists('b:custom_status_msg') | return '' | endif
  return '[' . b:custom_status_msg . ']'
endfunction

function! CustomTestStrategy(cmd) abort
  let opts = {}
  function! opts.on_exit(job_id, data, event)
    if a:data != 0 && exists('t:term_test_bufnum')
      exe bufwinnr(t:term_test_bufnum) . 'wincmd w'
    end
  endfunction
  call CloseTests()
  botright new
  let t:term_test_bufnum = bufnr('%')
  resize 11
  call termopen(a:cmd . ' #test', opts)
  wincmd p
endfunction
let g:test#custom_strategies = { 'custom': function('CustomTestStrategy') }

function! GetTabLine()
  let line = ''
  for i in range(tabpagenr('$'))
    let line .= (i+1 == tabpagenr()) ? '%#TabLineSel#' : '%#TabLine#'
    let line .= '%' . (i + 1) . 'T'
    let line .= ' %{GetTabLabel(' . (i + 1) . ')} '
  endfor
  let line .= '%#TabLineFill#%T'
  return line
endfunction

function! GetTabLabel(tab_number)
  let custom_tab_name = gettabvar(a:tab_number, 'tab_name')
  if custom_tab_name != '' | return custom_tab_name | endif

  let buflist = tabpagebuflist(a:tab_number)
  let file_path = bufname(buflist[0])
  if file_path =~ 'NERD_tree' && len(buflist) > 1
    let file_path = bufname(buflist[1])
  end
  if file_path == ''
    return '[No Name]'
  elseif file_path =~ 'fzf'
    return 'FZF'
  end
  return fnamemodify(file_path, ':p:t')
endfunction

function! GetProjectName()
  return fnamemodify(getcwd(), ':t')
endfunction

function! OnBufEnter()
  exe ':match'
  if !exists('b:buffer_mappings_created')
    call OverrideGlobalMappings()
  end
  call ConfigureLargeBuffers()
endfunction

function! OverrideGlobalMappings()
  call StashGlobalMappings(
    \ ['<leader>fre', ''], ['d0', 'n'], ['ds', 'n'], ['dss', 'n']
    \ )
  let buffer_name = bufname('%')
  if buffer_name == '[Global Replace]'
    map <buffer><Leader>fr :call feedkeys("\<space>fRa")<cr>
    map <buffer><Leader>fR :Greplace<cr>
  else
    call RestoreBufferMappings('<leader>fre')
  endif
  if buffer_name !~ 'NERD_tree'
    call RestoreBufferMappings('d0', 'ds', 'dss')
    map <buffer> m, mO
    map <buffer> `, `O
    map <buffer> ', `O
  endif
  let b:buffer_mappings_created=1
endfunction

function! StashGlobalMappings(...)
  if exists('g:stashed_mappings') | return | endif
  let g:global_mappings = {}
  for [mapping, mode] in a:000
    let g:global_mappings[mapping] = maparg(mapping, mode, 0, 1)
    exe mode . 'unmap ' . mapping
  endfor
  let g:stashed_mappings = 1
endfunction

function! RestoreBufferMappings(...)
  for mapping in a:000
    let info = g:global_mappings[mapping]
    exe info.mode . (info.noremap ? 'noremap' : 'map') . ' <buffer>'
      \ (info.silent ? '<silent>' : '') .
      \ (info.expr ? '<expr>' : '') .
      \ ' ' . mapping . ' ' . info.rhs
  endfor
endfunction

function! ConfigureLargeBuffers()
  if (&buftype != '' || IsCurrentBufferEmpty()) | return | endif
  let nb_lines = line('$')
  if !exists('b:previous_nb_lines') | let b:previous_nb_lines = '' | endif
  if nb_lines == b:previous_nb_lines | return | endif
  let b:previous_nb_lines = nb_lines
  if nb_lines < 500
    set nolazyredraw
  else
    set lazyredraw
  endif

  if (!has('nvim') || &syntax == '') | return | endif
  let b:tempfile = ''
  let file = expand('%')
  if file == ''
    let b:tempfile = tempname()
    call writefile(getbufline('%', 1, '$'), b:tempfile)
    let file = b:tempfile
  endif
  let cmd = "awk 'length > max { max=length } END { print max }' " . file
  call jobstart(cmd, { 'on_stdout': function('OnMaxLinesCounted') })
endfunction

function! IsCurrentBufferEmpty()
  return line('$') == 1 && getline(1) == ''
endfunction

function! OnMaxLinesCounted(job_id, data, event)
  let max_line_length = a:data[0]
  if max_line_length > 1000
    setlocal synmaxcol=153
  endif
  if exists('b:tempfile') && b:tempfile != ''
    call delete(b:tempfile)
    unlet b:tempfile
  endif
endfunction

function! CustomCloseTab()
  if s:current_tab_number == 1 | return | endif
  exe 'tabnext' . (s:current_tab_number - 1)
endfunction

function! GoToLastActiveTab()
  exe 'tabnext' . s:last_active_tab_number
endfunction

" function! Lint()
"   if &buftype != '' | return | endif
"   if !filereadable(expand('%:p')) | return | endif
"   if &filetype !~ '^\(ruby\|javascript\|scss\)' | return 0 | endif

"   if &filetype =~ 'javascript'
"     Neomake eslint
"   else
"     Neomake
"   end
" endfunction

function! GetFoldText()
  let text = getline(v:foldstart)
  let width = winwidth(0) - &foldcolumn - strwidth(text)
  return text . repeat(' ', width)
endfunction

function! SaveBufferScroll()
  if !exists('w:saved_buf_view') | let w:saved_buf_view = {} | endif
  let w:saved_buf_view[bufnr('%')] = winsaveview()
endfunction

function! RestoreBufferScroll()
  let buf = bufnr('%')
  if exists('w:saved_buf_view') && has_key(w:saved_buf_view, buf)
    let v = winsaveview()
    let at_start_of_file = v.lnum == 1 && v.col == 0
    if at_start_of_file && !&diff
      call winrestview(w:saved_buf_view[buf])
    endif
    unlet w:saved_buf_view[buf]
  endif
endfunction

function! DetectBinaryFile()
  if &filetype == ''
    \ && expand('%') !~ '\.\(bz2\|gz\|lzma\|xz\|Z\)$'
    \ && !!search('\%u0000', 'wn')
    Hexmode
  endif
endfunction

function! EnableMetaMappings()
  if has('gui_running')
    let keys = { '∂': 'd', '∫': 'b', 'ƒ': 'f', 'œ': 'q', '¬': 'l', '’': '}',
      \ '”': '{', '…': ';', '≤': ',', '˘': '>', '≥': '.', 'Ú': ': ',
      \ 'µ': 'm', '‘': ']', '“': '[', '—': '_', 'ß': 's', '–': '-', 'º': 0,
      \ '†': 't', '∆': 'j', '≠': '=', '˜': 'N', 'Ø': 'O', 'v': '√', 'V': '◊',
      \ '¡':1, '™':2, '£':3, '¢':4, '∞':5, '§':6, '¶':7, '•':8, 'ª':9 }
    for symbol in keys(keys)
      exe 'map ' . symbol . ' <m-' . keys[symbol] . '>'
    endfor
  else
    let ascii_nums = [33] + range(35, 61) + range(63, 78) + range(80, 90)
      \ + range(92, 123) + [125, 126]
    for num in ascii_nums
      let key = nr2char(num)
      exe 'map <esc>' . key . ' <m-' . key . '>'
    endfor
  endif
endfunction

function! SetTmuxWindowName()
  let cmd = 'rename=$(tmux show-window-options -t $TMUX_PANE -v automatic-rename);'
  let cmd .= 'if [[ $rename != "off" ]]; then;'
  let cmd .= "tmux rename-window -t $TMUX_PANE '" . GetProjectName() . "';"
  let cmd .= 'fi'
  call jobstart(cmd)
endfunction

function! RestoreTmuxWindowName()
  let cmd = 'number_of_vims=$(tmux list-panes -F "#{pane_current_command}" | grep -c vim);'
  let cmd .= 'if [[ $number_of_vims -eq 1 ]]; then;'
  let cmd .= 'tmux setw automatic-rename;'
  let cmd .= 'fi'
  call system(cmd)
endfunction

function! Profile()
  profile start profile.log
  profile func *
  profile file *
endfunction

function! BackgroundLoadLazyLoadedCode()
  python import vim
  if has('nvim')
    call plug#load('deoplete.nvim')
    autocmd! lazy_load_deoplete
  endif
  " call plug#load('vim-misc')
  " for plugin_name in keys(g:plugs)
  "   let plug = g:plugs[plugin_name]
  "   if has_key(plug, 'for') || has_key(plug, 'on')
  "     call plug#load(plugin_name)
  "   endif
  " endfor
endfunction

function! ImprovedGoToFile()
  try
    normal! gf
  catch /\(E447\|E345\)/
    try
      silent exe "normal \<c-]>"
    catch /E426/
      normal :
      echo 'No file found'
    endtry
  endtry
endfunction

function! LazyLoadDeoplete()
  if exists('g:first_enter_done')
    call plug#load('deoplete.nvim')
    autocmd! lazy_load_deoplete
  endif
  let g:first_enter_done = 1
endfunction

function! CycleToNextFile(count, ...)
  let dir = expand('%:p:h')
  let files = globpath(dir, '*', 0, 1) + globpath(dir, '.[^.]*', 0, 1)
  let files = sort(filter(files, 'filereadable(v:val)'), 'i')
  let idx = index(files, expand('%:p'))
  if idx == -1 | return 'echoerr "Unable to move to next file"' | endif
  let file = get(files, a:0 && a:1 ? a:count : ((idx + a:count) % len(files)), -1)
  if file == -1 | return 'echoerr "Unable to move to next file"' | endif
  exe 'edit ' . file
endfunction

function! GetNextFile(direction)
  let file = expand('%:p')
  if file == ''
    let file = getcwd() . '/'
  endif
  let offset = v:count1 * a:direction
  while offset
    let files = GetFileEntries(fnamemodify(file,':h'))
    if a:direction < 0
      call reverse(sort(filter(files,'v:val <# file')))
    else
      call sort(filter(files,'v:val ># file'))
    endif
    let temp = get(files,0,'')
    if temp == ''
      let file = fnamemodify(file,':h')
    else
      let file = temp
      let found = 1
      while isdirectory(file)
        let files = GetFileEntries(file)
        if empty(files)
          let found = 0
          break
        endif
        let file = files[offset > 0 ? 0 : -1]
      endwhile
      let offset += (offset > 0 ? -1 : 1) * found
    endif
  endwhile
  return fnameescape(fnamemodify(file, ':.'))
endfunction

function! GetFileEntries(path)
  let path = substitute(a:path,'[\\/]$','','')
  let files = split(glob(path."/.*"),"\n")
  let files += split(glob(path."/*"),"\n")
  call map(files,'substitute(v:val,"[\\/]$","","")')
  call filter(files,'v:val !~# "[\\\\/]\\.\\.\\=$"')
  let filter_suffixes = substitute(escape(&suffixes, '~.*$^'), ',', '$\\|', 'g') .'$'
  call filter(files, 'v:val !~# filter_suffixes')
  return files
endfunction

function! InsertLineBefore(count) abort
  put!=repeat(nr2char(10), a:count)
  ']+1
  silent! call repeat#set("\<Plug>InsertLineBefore", a:count)
endfunction
nnoremap <silent> <Plug>InsertLineBefore :<c-u>call InsertLineBefore(v:count1)<cr>

function! InsertLineAfter(count) abort
  put =repeat(nr2char(10), a:count)
  '[-1
  silent! call repeat#set("\<Plug>InsertLineAfter", a:count)
endfunction
nnoremap <silent> <Plug>InsertLineAfter :<c-u>call InsertLineAfter(v:count1)<cr>

function! QfListNext(cmd_next)
  try
    if !exists('g:saved_qflist') | let g:saved_qflist = [] | endif
    let current_list = getqflist()
    if current_list == g:saved_qflist
      exe 'c' . a:cmd_next
    else
      let g:saved_qflist = current_list
      cc
    endif
  catch /E553/ | echo 'No more items'
  catch /E42/ | echo 'Empty quickfix list'
  endtry
endfunction

function! LocListNext(cmd_next)
  try
    if !exists('g:saved_loclist') | let g:saved_loclist = [] | endif
    let current_list = getloclist(0)
    if current_list == g:saved_loclist
      exe 'l' . a:cmd_next
    else
      let g:saved_loclist = current_list
      ll
    endif
  catch /E553/
    echo 'No more items'
  catch /\(E42\|E776\)/
    echo 'Empty location list'
  endtry
endfunction

function! SetProjectMappings()
  if IsRubyProject()
    noremap <silent> <leader>rg :e Gemfile<cr>
    noremap <silent> <leader>rG :vnew<cr>:e Gemfile<cr>
    noremap <silent> <leader>rh :s/:\([^ ]*\)\(\s*\)=>/\1:<cr>
    nnoremap <silent> <leader>rH :%s/:\([^ ]*\)\(\s*\)=>/\1:<cr>
    noremap <silent> <leader>rn :call NewPlaygroundBuffer('ruby')<cr>
    noremap <silent> <leader>ub obinding.pry<esc>
  endif
  if IsRailsProject()
    noremap <silent> <leader>rr :e config/routes.rb<cr>
    noremap <silent> <leader>rR :vnew<cr>:e config/routes.rb<cr>
    noremap <silent> <leader>rs :e db/schema.rb<cr>
    noremap <silent> <leader>rS :vnew<cr>:e db/schema.rb<cr>
    noremap <silent> <leader>rm :call ShowLatestMigration()<cr>
    noremap <silent> <leader>rM :vnew<cr>:call ShowLatestMigration()<cr>
    xnoremap <silent> <leader>rp :<c-u>call ExtractRailsPartial()<cr>
  endif
  if IsPhpProject()
    noremap <silent> <leader>ub :Breakpoint<cr>
    noremap <silent> <leader>uu :VdebugStart<cr>
    noremap <silent> <leader>up :VdebugStart<cr>
    noremap <silent> <leader>us :VdebugStart<cr>
    noremap <silent> <leader>uc :BreakpointRemove *<cr>
    nmap <silent> <leader>ul V<leader>ue
  endif
endfunction

function! IsRubyProject()
  return !empty(glob('Gemfile'))
endfunction

function! IsRailsProject()
  return !empty(glob('config/environment.rb'))
endfunction

function! IsPhpProject()
  return !empty(glob('*.php'))
endfunction

function! BufferHistoryLast()
  exe 'normal ' . (len(w:buffer_history) - w:buffer_history_index - 1) . ']b'
endfunction

function! BufferHistoryFirst()
  exe 'normal ' . w:buffer_history_index . '[b'
endfunction

function! DisplayDirectory(dir)
  if !isdirectory(a:dir) | return | endif
  call ClearMessages()
  enew
  let b:startup_buffer = 1
  call buffer_history#add(winbufnr(0))
  NERDTree
endfunction

function! BrowseOldFiles()
  let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && getbufvar(v:val, "&filetype") != "qf"')
  let buffers = sort(buffers, 'SortBuffers')
  let files = filter(map(buffers, 'bufname(v:val)'), 'len(v:val)')
    \ + filter(copy(v:oldfiles), 'filereadable(expand(v:val))')
  let files = filter(files, "(v:val !~ '/' || v:val =~ '^" . getcwd() ."/') && v:val != '.'")
  let files = fzf#vim#_uniq(map(files, 'fnamemodify(v:val, ":.")'))

  call fzf#run(fzf#wrap({
    \ 'source': files,
    \ 'options': ['--prompt', 'OldFiles> ']
    \ }))
endfunction

function! SortBuffers(...)
  let [b1, b2] = map(copy(a:000), 'get(g:fzf#vim#buffers, v:val, v:val)')
  return b1 < b2 ? 1 : -1
endfunction

function! LazyLoadFugitive(cmd)
  call plug#load('vim-fugitive')
  call fugitive#detect(expand('%:p'))
  exe a:cmd
endfunction

"####################
"### Autocommands ###
"####################

augroup improved_autowrite
  autocmd!
  autocmd FocusLost,BufLeave * call Autowrite()
augroup end

augroup improved_autoread
  autocmd!
  autocmd FocusGained,BufEnter * silent! checktime
augroup end

augroup auto_mkdir
  autocmd!
  autocmd BufWritePre *
    \ if !isdirectory(expand('<afile>:p:h')) |
    \   call mkdir(expand('<afile>:p:h'), 'p') |
    \ endif
augroup end

augroup detect_filetypes
  autocmd!
  autocmd BufRead,BufNewFile *spec.rb set ft=ruby.rspec
  autocmd BufRead,BufNewFile *.html.erb set ft=eruby.html
  autocmd BufRead,BufNewFile *.js.erb set ft=eruby.javascript
  autocmd BufRead,BufNewFile *.nfo,*.NFO set ft=nfo
  autocmd BufRead,BufNewFile *.js.es6 set ft=javascript
  autocmd BufRead,BufNewFile *.js.es6.erb set ft=eruby.javascript
  autocmd BufRead,BufNewFile *.env*,Procfile* set ft=conf
  autocmd BufRead,BufNewFile Brewfile set ft=ruby
augroup end

augroup detect_binary_files
  autocmd!
  autocmd BufRead * call DetectBinaryFile()
augroup end

augroup custom_undofile
  autocmd!
  autocmd BufWritePost * call WriteUndoFile()
augroup end

if has('nvim')
  augroup custom_backup
    autocmd!
    autocmd BufWritePost * call BackupCurrentFile()
  augroup end

  augroup on_display_events
    autocmd!
    autocmd TermOpen *test* call OnTestDisplayed()
    autocmd TermOpen *ag\ * call OnFileSearchDisplayed()
  augroup end
endif

if exists('$TMUX') && has('nvim')
  augroup tmux_window_name
    autocmd!
    autocmd VimEnter * call SetTmuxWindowName()
    autocmd VimLeave * call RestoreTmuxWindowName()
  augroup end
endif

augroup custom_tab_behavior
  autocmd!
  autocmd TabEnter * let s:current_tab_number = tabpagenr()
  autocmd TabClosed * call CustomCloseTab()
  autocmd TabLeave * let s:last_active_tab_number = tabpagenr()
augroup end

augroup goyo_events
  autocmd!
  autocmd User GoyoEnter nested call OnGoyoEnter()
  autocmd User GoyoLeave nested call OnGoyoLeave()
augroup end

if has('nvim')
  augroup lazy_load_deoplete
    autocmd!
    autocmd InsertEnter * call LazyLoadDeoplete()
  augroup end
endif

" augroup lint_events
"   autocmd!
"   autocmd BufWritePost,BufEnter,FocusLost * call Lint()
" augroup end

augroup preserve_buffer_scroll
  autocmd!
  autocmd BufLeave * call SaveBufferScroll()
  autocmd BufEnter * call RestoreBufferScroll()
augroup end

augroup background_load_lazy_loaded_plugins
  autocmd!
  autocmd FocusLost *
    \ call BackgroundLoadLazyLoadedCode() |
    \ autocmd! background_load_lazy_loaded_plugins
augroup end

augroup replace_netrw_with_nerdtree
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,VimEnter * call DisplayDirectory(expand('<amatch>'))
augroup end

augroup nerdtree_events
  autocmd!
  autocmd User NERDTreeInit call OnNERDTreeInit()
  autocmd BufWinEnter * call PreventBuffersInNERDTree()
  autocmd BufEnter NERD_tree* call ResetNERDTreePreview()
  autocmd BufLeave * silent let t:last_bufnum = bufnr('%')
  autocmd BufEnter * call LeaveNERDTreePreview()
augroup end

augroup general_autocommands
  autocmd!
  autocmd BufWritePre * call TrimTrailingWhitespace()
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd InsertLeave * silent! set nopaste
  autocmd BufEnter * call OnBufEnter()
  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
  autocmd BufRead,BufNewFile *.html* setlocal matchpairs="(:),[:],{:}"
  autocmd User FzfStatusLine setlocal statusline=\ "
augroup end

"#############
"### Other ###
"#############

if !has('nvim') | call EnableMetaMappings() | endif
call SetProjectMappings()

set exrc
set secure
