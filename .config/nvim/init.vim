" Plugins
call plug#begin()
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'nvim-tree/nvim-web-devicons'                         " Icons
Plug 'vim-airline/vim-airline'                             " Status Bar
Plug 'cocopon/iceberg.vim'                                 " Colour Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Code Completion
Plug 'skywind3000/quickmenu.vim'                           " Quick Menu
call plug#end()

set nu
set rnu
set ignorecase

filetype plugin indent on
syntax on

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme iceberg

" Plugin Config

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" QuickMenu
noremap <silent><F12> :call quickmenu#toggle(0)<cr>
let g:quickmenu_options = "HL"

call quickmenu#append('# Directories', '')
call quickmenu#append('CODE Folder', 'edit /mnt/d/CODE')

call quickmenu#append('# Files', '')
call quickmenu#append('NVIM Config', 'edit /home/jkoskie/.config/nvim/init.vim')

" Github Copilot
let g:copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
