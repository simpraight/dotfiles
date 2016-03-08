
source ~/.vim/.vimrc_bundle

source ~/.vim/.vimrc_global

source ~/.vim/.vimrc_encoding

source ~/.vim/.vimrc_appearance

source ~/.vim/.vimrc_keymap


"
" bundle: NERDTree
"

let NERDTreeShowHidden = 1
let NERDTreeWinSize=30

" map <F7> to toggle NERDTree window
nmap <silent> <F7> :NERDTreeToggle<CR>

"
" bundle: Vim-Ref
"
let g:ref_phpmanual_path='/home/www/phpmanual/php-chunked-xhtml'
map <silent> <F1> <S-k>

"
" bundle: php.vim
"
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"
" bundle: lightline
"
let g:lightline = { 'colorscheme': 'solarized' }

"
" bundle: syntastic
"
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['php'] }
let g:syntastic_php_checkers = ['php']
"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

"
" bundle: indent-guides
"
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=236
let g:indent_guides_enable_on_vim_startup = 1

"
" bundle: php-foldings
"
hi Folded ctermbg=232
