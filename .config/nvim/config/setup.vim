" --- Papercolor theme ---
set t_Co=256
set background=light
" White background and line number column
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.light': {
  \       'override' : {
  \         'color00' : ['#ffffff', ''],
  \         'linenumber_bg' : ['#ffffff', ''],
  \       }
  \     }
  \   }
  \ }
colorscheme PaperColor
set number
set laststatus=2

" --- Airline ---
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" --- NerdTree ---
map <C-n> :NERDTreeToggle<CR>
" close if only nerdtree left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" change arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Remove 'press ? for help'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


" --- General setup ---
" line numbers
set number
" don't copy line numbers
set mouse=a

" tab settings
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" smart settings
set smartcase
set smartindent
set autoindent

" show matching brackets
set showmatch


" text width before wrapping
set tw=79
set fo+=t

" history
set history=1000

" Show 80 column limit
set cc=80
