" ____    ____  __   _______   _______
" \   \  /   / |  | |       \ |   ____|
"  \   \/   /  |  | |  .--.  ||  |__ "   \      /   |  | |  |  |  ||   __|
"    \    /    |  | |  '--'  ||  |____
"     \__/     |__| |_______/ |_______|
"
" Proxy PlugInstall and PlugUpdate Command
let g:plug_curl_command = 'curl --socks5-hostname 127.0.0.1:1080'


"
" vim-plug
"
call plug#begin('~/.vim/.vimplug')
Plug 'chr4/nginx.vim'
Plug 'preservim/vimux'
Plug 'vim-python/python-syntax'

"Autocomplete 
Plug 'ycm-core/YouCompleteMe'
" Plug 'vim-syntastic/syntastic'
" Plug 'alvan/vim-php-manual'
"
" for markdown plugin
" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'maksimr/vim-jsbeautify'
Plug 'leafgarland/typescript-vim'

Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-rails'
Plug 'airblade/vim-gitgutter'
Plug 'Townk/vim-autoclose'
Plug 'mileszs/ack.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Lokaltog/vim-powerline'
Plug 'slim-template/vim-slim'
Plug 'Chiel92/vim-autoformat'
Plug 'haya14busa/incsearch.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'wakatime/vim-wakatime'
call plug#end()

autocmd FileType ruby compiler ruby
"
" autocmd
"
autocmd BufNewFile *.lua 0r /tmp/lua.template
autocmd BufNewFile *.lua normal gnp
autocmd BufWinEnter *.mako set filetype=html
autocmd BufWinEnter *.sls set filetype=yaml
autocmd BufWinEnter *.tp set filetype=html
autocmd BufWinEnter *.volt set filetype=html
autocmd BufWinEnter *.conf set filetype=nginx
autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
autocmd FileType php setlocal commentstring=//\ %s
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif
autocmd BufEnter * lcd %:p:h
autocmd BufRead,BufNewFile *.scss set filetype=css
autocmd BufRead,BufNewFile *.coffee set filetype=javascript
autocmd BufRead,BufNewFile *.rb set filetype=ruby
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.njk set filetype=html

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

call system('bash ~/.vim/lua.template > /tmp/lua.template')
call system('mkdir -p ~/.vimtmp/undodir ~/.vimtmp/backupdir ~/.vimtmp/directory')
filetype off
filetype plugin indent on
filetype plugin on
let g:is_bash=1
let $VIMFILES=$HOME.'/.vim'
let @w = 'x~n'
nnoremap <CR> :noh<CR><CR>
noremap <F3> :Autoformat<CR>

nmap <F2> :NERDTreeToggle <CR>
nmap <c-l> <esc>:noh<cr>
nmap <leader>a :set filetype=awk        <CR>
nmap <leader>c :set filetype=css        <CR>
nmap <leader>d :set filetype=htmldjango <CR>
nmap <leader>e :set filetype=sed        <CR>
nmap <leader>h :set filetype=html       <CR>
nmap <leader>j :set filetype=javascript <CR>
nmap <leader>l :set filetype=lua        <CR>
nmap <leader>m :set filetype=markdown   <CR>
nmap <leader>p :set filetype=php        <CR>
nmap <leader>s :set filetype=sh         <CR>
nmap <leader>t :set filetype=txt        <CR>
nmap <leader>v :set filetype=vim        <CR>
nmap <leader>y :set filetype=python     <CR>
nmap <leader>n :set filetype=nginx     <CR>
nmap <Left>  :vertical res-5<CR>
nmap <Right> :vertical res+5<CR>
nmap <Up>    :res-5<CR>
nmap <Down>  :res+5<CR>

"powerline config begin
set t_Co=256
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
"powerline config end

set splitbelow
set clipboard=unnamed " use system clipboard
set nocompatible               " be iMproved
set nu
set mouse=a
set backspace=2
set backupcopy=yes
set ambiwidth=double
set autoread
set autowriteall
set backup
set bs+=start
set smartindent cindent autoindent
set shiftwidth=2 tabstop=2 smarttab
set clipboard+=unnamed
set complete-=i
set cursorline
set expandtab
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 fileencoding=utf-8
set foldmethod=manual
set hidden hlsearch
set ignorecase smartcase
set noautochdir
set noshowmatch
set nowrapscan
set number
set pastetoggle=<F5>
set path+=./model/,./ctrl/,./lib/,*/templates/,*/static/,..,*/src/main/java/
set printoptions=formfeed:y,header:0,paper:A4,duplex:off,syntax:n
set scrolloff=1
set shell=/bin/bash
set nocompatible
set showcmd                                 " Show cmd in vim-cmdline.
set t_Co=256                                " Make vim look better in putty.
set textwidth=0
set undodir=~/.vimtmp/undodir
            \ directory=~/.vimtmp/directory
            \ backupdir=~/.vimtmp/backupdir
            \ viewdir=~/.vimtmp/view
            \ undofile
set vb t_vb=                                " Turn off bi-sound of vim.
set wildignore+=*.git\\*,*.tgz,*.zip,*.url,*.pyc,*.class


"scheme
colo molokai
let g:molokai_original = 1
let g:rehash256 = 1
syntax on

"
" statusline
"
set laststatus=2
set statusline=(Vide)\ \ %<%f
set statusline+=%w%h%m%r
set statusline+=\ %{getcwd()}
set statusline+=\ [%{&ff}:%{&fenc}:%Y]
set statusline+=%=%-14.(%l,%c%V%)\ %p%%

" PythonSyntax
let g:python_highlight_all = 1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" markdown
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

let g:gitgutter_max_signs=10000

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" 调整窗口大小
nnoremap <up> :resize +2<cr>
nnoremap <down> :resize -2<cr>
nnoremap <left> :vertical resize +2<cr>
nnoremap <right> :vertical resize -2<cr>

"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'

"
" autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatdef_eslint = '"SRC=eslint-temp-${RANDOM}.js; cat - >$SRC; eslint --fix $SRC >/dev/null 2>&1; cat $SRC | perl -pe \"chomp if eof\"; rm -f $SRC"'
let g:formatters_javascript = ['eslint']

"easymotion
let g:EasyMotion_leader_key = '<Leader>'

"
" NERDTree
"
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden            = 1
let g:NERDTreeBookmarksFile         = $HOME.'/.vimtmp/NerdBookmarks.txt'
let g:NERDTreeShowBookmarks         = 1
let g:NERDTreeShowFiles             = 1
let g:NERDTreeShowLineNumbers       = 0
let g:NERDTreeWinSize               = 29
let g:NERDTreeMinimalUI             = 1
let g:NERDTreeDirArrows             = 1
let g:NERDTreeIgnore                = [
            \ '.*\.class',
            \ '.*\.pyc',
            \ '.*\.chm',
            \ '.*\.ttf',
            \ '.*\.lnk',
            \ '.*\.cproj',
            \ '.*\.exe',
            \ '.*\.dll',
            \ '.*\.out',
            \ '.*\.files',
            \ '.*\.zip',
            \ '.*\.rar',
            \ '.*\.gif'
            \ ]
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Enable plugins and load plugin for the detected file type.
" filetype plugin on
" Enable Omnicomplete features
" set omnifunc=syntaxcomplete
" YouCompleteMe a code-completion engine for Vim
" If you want to disable me, just uncomment the following statement.
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_add_preview_to_completeopt = 0

let g:ycm_min_num_of_chars_for_completion = 3 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" 比较喜欢用tab来选择补全...
function! MyTabFunction ()
    let line = getline('.')
    let substr = strpart(line, -1, col('.')+1)
    let substr = matchstr(substr, "[^ \t]*$")
    if strlen(substr) == 0
        return "\<tab>"
    endif
    return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <tab> <c-r>=MyTabFunction()<cr>

" alias Command
cnoreabbrev zsh term zsh
cnoreabbrev vzsh :VimuxRunCommand('cd ' . expand('%:p:h') . ' && clear')


" 解决 vim 滚动卡顿
set cursorline 
set re=2
"re=[num]
"0   automatic selection
"1   old engine
"2   NFA engine
