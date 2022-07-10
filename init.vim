let g:vimDir = $HOME.'/.config/nvim'
let g:pluginDir = g:vimDir.'/plugins/plugged'

call plug#begin(g:pluginDir)

    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()

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

colorscheme peachpuff
highlight Comment ctermfg=green

syntax on
set expandtab " 输入Tab字符时,自动替换成空格,受tabstop影响
set tabstop=2 " 修改Tab字符显示宽度
set shiftwidth=2 " 自动缩进时,缩进长度为2

" 设置softtabstop有一个好处是可以用Backspace键来一次删除2个空格.
" softtabstop的值为负数,会使用shiftwidth的值,两者保持一致,方便统一缩进.
set softtabstop=-1 " 不使用softtabstop

set ai
set number
set hlsearch
set ruler

" 不创建swp文件和备份
set nobackup
set nowritebackup
set noswapfile

"" 设置编码
" 文件尝试用以下编码打开
set fileencodings=utf-8,gb18030,big5,euc-jp,euc-kr,latin1
" Vim 默认 utf-8 编码
set encoding=utf-8


" coc.nvim {{

  let g:coc_global_extensions = [
    \'coc-html', 'coc-json',
    \'coc-tabnine', 'coc-git',
    \'coc-pairs', 'coc-snippets',
    \'coc-pyright', 'coc-markdownlint']

  " Use tab for trigger completion with characters ahead and navigate.
  " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
  " other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" }}
