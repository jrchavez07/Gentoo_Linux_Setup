:set number
:set relativenumber
:set autoindent
:set tabstop=8
:set shiftwidth=8
:set smarttab
:set softtabstop=8
:set mouse=a


" PLUGINS
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" :Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal - doesn't work
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/projekt0n/github-nvim-theme.git'
Plug 'caenrique/nvim-toggle-terminal' " toggleterm for VimScript
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " tokyo night
" Plug 'akinsho/toggleterm.nvim', tag = 'v1.*' " toggleterm for lua
" Plug 'https://github.com/akinsho/toggleterm.nvim.git' toggleterm for lua

set encoding=UTF-8
call plug#end()


" KEYBINDDINGS
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <silent> <C-z> :ToggleTerminal<Enter>
" nnoremap <silent> <C-z> :ToggleTerminal<Enter>
" nnoremap <silent> <C-z> :ToggleTerminal<Enter>

tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

nmap <F8> :TagbarToggle<CR>


" color schemes
" VimScript
" colorscheme github_dimmed

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Example config in VimScript
" let g:tokyonight_style = \"storm"
" let g:tokyonight_style = \"day"
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme tokyonight
