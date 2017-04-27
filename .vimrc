 set nocompatible               " be iMproved
 filetype off                   " required!

" use system clipboard
 set clipboard=unnamed

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle
 " required!
 Plugin 'gmarik/vundle'

 " My Plugins here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'tpope/vim-rails.git'
 Plugin 'scrooloose/nerdtree'
 Plugin 'kien/ctrlp.vim'
 Plugin 'msanders/snipmate.vim'
 Plugin 'mileszs/ack.vim'
 Plugin 'Shougo/neocomplcache.vim'
 Plugin 'Townk/vim-autoclose'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'kchmck/vim-coffee-script'
 Plugin 'leafgarland/typescript-vim'
 " vim-scripts repos
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 " non github repos
 Plugin 'git://git.wincent.com/command-t.git'
 Plugin 'slim-template/vim-slim.git'
 Plugin 'AndrewRadev/vim-eco.git'
 Plugin 'gaogao1030/vim-skim'
 Plugin 'gaogao1030/vim-slimbars'
 " git repos on your local machine (ie. when working on your own plugin)
 " ...

 call vundle#end()
 filetype plugin indent on     " required!
 syntax enable
 "
 " Brief help
 " :PluginList          - list configured bundles
 " :PluginInstall(!)    - install(update) bundles
 " :PluginSearch(!) foo - search(or refresh cache first) for foo
 " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..

 " NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

 "neocomplache config
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_force_overwrite_completefunc = 1

 " Display extra whitespace
  set list listchars=tab:»·,trail:·
 "
 fun! StripTrailingWhitespace()
 " Don't strip on these filetypes
  if &ft =~ 'markdown'
    return
  endif
    %s/\s\+$//e
  endfun
 autocmd BufWritePre * call StripTrailingWhitespace()

 "other config
 set nu
 set mouse=a
 set tabstop=2
 set shiftwidth=2
 set expandtab
 let mapleader = ","
 let g:mapleader = ","
 map Y "+y
 map P "+p  ""

 "easymotion
 let g:EasyMotion_leader_key = '<Leader>'

 "powerline config
 set t_Co=256
 set laststatus=2
 set encoding=utf-8
 set fillchars+=stl:\ ,stlnc:\

 "scheme
colo molokai
let g:molokai_original = 1
let g:rehash256 = 1

 "typescript
 let g:typescript_indent_disable = 1
 autocmd QuickFixCmdPost [^l]* nested cwindow
 autocmd QuickFixCmdPost    l* nested lwindow
 autocmd FileType typescript :set makeprg=tsc

 "git
 autocmd Filetype gitcommit setlocal spell textwidth=72

 "panel resize
 nmap <Left>  :vertical res-5<CR>
 nmap <Right> :vertical res+5<CR>
 nmap <Up>    :res-5<CR>
 nmap <Down>  :res+5<CR>

 set backupcopy=yes
