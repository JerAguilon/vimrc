set number
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

" fzf for fuzzy search in vim
set rtp+=/usr/local/opt/fzf

" Jump for python
map <leader>j  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntax checker for python
" Uncomment to use
" let g:syntastic_python_checkers = ['python']


" Auto mirror nerd tree
autocmd BufWinEnter * NERDTreeMirror


" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
