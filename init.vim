call plug#begin(stdpath('data') . '/plugs')
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'dense-analysis/ale'
"""
Plug 'relastle/bluewery.vim'
Plug 'Rigellute/rigel'
Plug 'severij/vadelma'
Plug 'challenger-deep-theme/vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'lithammer/vim-eighties'
Plug 'flrnd/candid.vim'
Plug 'flrnd/plastic.vim'
call plug#end()


" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='gruvbox'
let g:airline#extensions#ale#enabled = 1

" Settings
syntax enable
filetype plugin indent on
:set termguicolors
:set relativenumber
:set numberwidth=3

" Remap ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" FZF
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,*.js'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'

" Yank to system clipboard
:set clipboard=unnamedplus

"Indentation
:set tabstop=2
:set expandtab
:set shiftround
:set shiftwidth=2
:set smarttab

"Searching
:set ignorecase
:set smartcase

"Coc
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-prettier']
let g:coc_disable_startup_warning = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#autoformat = 1


:hi! Normal guibg=NONE

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


colorscheme bluewery

" ALE
let g:ale_linters = {
\   'clojure': ['joker'],
\}

let g:ale_linters_explicit = 1
