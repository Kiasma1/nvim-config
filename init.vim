let g:vimDir = $HOME.'/.config/nvim'

let g:pluginDir = g:vimDir.'/plugins/plugged'
let g:pluginDefine = g:vimDir.'/plugins/def.vim'
let g:pluginConf = g:vimDir.'/plugins/config.vim'

let g:configSetting = g:vimDir.'/config/setting.vim'
let g:configMapping = g:vimDir.'/config/mapping.vim'

" Load plugins def and config
exec ":source ".g:pluginDefine
exec ":source ".g:pluginConf

exec ":source ".g:configSetting
exec ":source ".g:configMapping

inoremap jj <ESC>
colorscheme peachpuff

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
