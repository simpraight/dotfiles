
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
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

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
let g:syntastic_error_symbol='×'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '×'
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

"
" bundle: surround
"
let g:surround_42 = "{{ '\r' }}"

"
" bundle: NeoComplcache
"
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {}
let g:neocomplcache_dictionary_filetype_lists['default'] = ''

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" <CR>: close popup and save indent.
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" key-mappings.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
