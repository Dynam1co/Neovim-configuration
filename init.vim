call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround' " Mostrar llaves, paréntesis etc
Plug 'zanglg/nova.vim' " Tema
Plug 'drewtempelmeyer/palenight.vim' " Tema
Plug 'ayu-theme/ayu-vim' " Tema
Plug 'arcticicestudio/nord-vim' " Tema
Plug 'fcpg/vim-orbital' " Tema
Plug 'scrooloose/nerdtree'  
Plug 'scrooloose/syntastic'  " Mostrar errores con lopen
Plug 'vim-airline/vim-airline' " Barra de estado
Plug 'vim-airline/vim-airline-themes' " Barra de estado
Plug 'Yggdroot/indentLine' " Niveles de indentación
Plug 'christoomey/vim-tmux-navigator' " Navegar entre archivos abiertos
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " Autocompletado
Plug 'iCyMind/NeoSolarized' " Otro tema
Plug 'Shougo/neco-syntax'
Plug 'ervandew/supertab' " Navegar entre las sugerencias de deoplete
Plug 'Shougo/echodoc.vim' " Muestra la firma de la función
Plug 'dense-analysis/ale' " Analizador de código
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis
Plug 'Xuyuanp/nerdtree-git-plugin' " Estado del archivo en git en nerdtree
Plug 'vim-python/python-syntax' " Resaltar sintaxis de Python
Plug 'davidhalter/jedi-vim', {'for': 'python'} " Autocompletado Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python semantic highlighting
Plug 'vimlab/split-term.vim' " Terminal
call plug#end()

" Air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1  " Mostrar nº de buffer

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_aggregate_errors = 1

" Mostrar errores del analizador de código
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Activar echodoc al iniciar
set noshowmode
let g:echodoc_enable_at_startup=1

" Invertir dirección de navegación supertab
let g:SuperTabDefaultCompletionType = 'c-n'

" Activar autocompletado
let g:deoplete#enable_at_startup = 1

" Colores
set termguicolors
set background=dark
"colorscheme nova
"colorscheme palenight
"colorscheme ayu
"colorscheme nord
colorscheme orbital

" Barra de estado de abajo
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
set noshowmode

" Niveles de indentación
let g:indendLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" NerdTree
let mapleader=" "
  " espacio + n + t para abrir nerd tree
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1 " Cierra el árbol al abrir un archivo

" Al pusar Space+w guarda y al pulsar Space+q sale
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Python syntax
let g:python_highlight_all = 1

" Configuración específica de Neovim
set number " Mostrar números de línea
set mouse=a " Integración con ratón
set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres
set encoding=utf-8
set clipboard=unnamed  " Habilitar el clipboard entre neovim y el sistema operativo
syntax enable " Resaltar sintaxis
set showcmd " Mostrar los comandos que escribo
set relativenumber " Reordena los números de línea

" Reemplazar tabs por espacios
set tabstop=2 shiftwidth=2 expandtab

" split-term
g:split_term_vertical
set splitright
nmap <Leader>t :VTerm<CR>
