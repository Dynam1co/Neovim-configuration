call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround' " Mostrar llaves, paréntesis etc
Plug 'zanglg/nova.vim' " Tema
Plug 'drewtempelmeyer/palenight.vim' " Tema
Plug 'ayu-theme/ayu-vim' " Tema
Plug 'arcticicestudio/nord-vim' " Tema
Plug 'scrooloose/nerdtree'
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
call plug#end()

" Mostrar errores del analizador de código
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

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
colorscheme palenight
"colorscheme ayu
"colorscheme nord

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

" Python syntax
let g:python_highlight_all = 1

" Configuración específica de Neovim
set number " Mostrar números de línea
set mouse=a " Integración con ratón
set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres
