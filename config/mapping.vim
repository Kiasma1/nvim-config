let mapleader = "\<Space>"

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <Esc> <nop>

inoremap jj <Esc>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" configure file
map <silent> <leader>pc :e ~/.vim/plugins/config.vim<CR>
map <silent> <leader>pd :e ~/.vim/plugins/def.vim<CR>
map <silent> <leader>fk :e ~/.vim/config/mapping.vim<CR>
map <silent> <leader>fc :e ~/.config/nvim/init.vim<CR>

