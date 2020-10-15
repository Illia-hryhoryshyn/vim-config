call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'leafoftree/vim-vue-plugin'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'APZelos/blamer.nvim'
call plug#end()

if (has('termguicolors'))
  set termguicolors
endif

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened
set tabstop=2 
set shiftwidth=2
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=2 "4 пробела в табе
" Автоотступ
set autoindent
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256
set gcr=n-v-c-i:block-Cursor " set block cursor for normal, visual,
                             " command-line and insert mode

" Перед сохранением вырезаем пробелы на концах (только в .js файлах)
autocmd BufWritePre *.js normal m`:%s/\s\+$//e ``

syntax on "Включить подсветку синтаксиса

set nu "Включаем нумерацию строк
set relativenumber
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
vnoremap <C-c> "+y
"map <C-v> "+p
map <C-b> :NERDTreeToggle<CR>
map <C-f> :Files<CR>
"map <C-Left> :tabp<cr>
"map <C-Right> :tabn<cr>

" Выключаем звук в Vim
set visualbell t_vb=

set guifont=Monaco:h18

let g:material_terminal_italics = 1
let g:material_theme_style = 'dark'
colorscheme material
