" GENERAL {{{1
" SETTINGS {{{2
" Miscallenous {{{3
set hidden                      " Hide files when leaving them.
set number                      " Show line numbers.
set numberwidth=1               " Minimum line number column width.
set cmdheight=2                 " Number of screen lines to use for the commandline.
set textwidth=80                " Lines length limit (0 if no limit).
set formatoptions=jtcrq         " Sensible default line auto cutting and formatting.
set linebreak                   " Don't cut lines in the middle of a word .
set showmatch                   " Shows matching parenthesis.
set matchtime=2                 " Time during which the matching parenthesis is shown.
set background=dark             " Color adapted to dark background.
set statusline=%f\ %m%=[%l/%L]  " Status line (filename [modified] ...  [currentLine / totalLines])
set listchars=tab:▸\ ,eol:¬     " Invisible characters representation when :set list.
set clipboard=unnamedplus       " Copy/Paste to/from clipboard

" Search {{{3
set incsearch  " Incremental search.
set ignorecase " Case insensitive.
set smartcase  " Case insensitive if no uppercase letter in pattern, case sensitive otherwise.
set nowrapscan " Don't go back to first match after the last match is found.

" Fold {{{3
set foldmethod=indent
set foldlevelstart=1

" Indentation {{{3
set autoindent
set smartindent

" Tabs {{{3
set expandtab     " Tab transformed in spaces
set tabstop=2     " Sets tab character to correspond to x columns.
                  " x spaces are automatically converted to <tab>.
                  " If expandtab option is on each <tab> character is converted to x spaces.
set softtabstop=2 " column offset when PRESSING the tab key or the backspace key.
set shiftwidth=2  " column offset when using keys '>' and '<' in normal mode.

" MAPPINGS {{{2

let mapleader = ","
set timeoutlen=700 " time in milliseconds that is waited for the next mapping key

" <Esc> {{{3
noremap <leader>m <Esc>
inoremap <leader>m <Esc>
cnoremap <leader>m <Esc>
tnoremap <leader>m <C-\><C-n> 

" Navigate inside a wrapped line {{{3
noremap <Up> :normal gk<CR>
noremap <Down> :normal gj<CR>

" Switche between buffers {{{3
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>

" Tag navigation {{{3
nnoremap <C-Up> :tprevious<CR>
nnoremap <C-Down> :tnext<CR>
" Displays the list of multiple match for a tag by default. 
" <C-]> is mapped to :tag <current_word> (jump to the first match) by default.
" g<C-]> is mapped to :tjump <current_word> (displays the list if multiple matches exist)
nnoremap <C-]> g<C-]>

" Quickfix list navigation {{{3
noremap <silent> <S-l> :cprevious<CR>
noremap <silent> <S-h> :cnext<CR>

" Bubble lines {{{3
nnoremap <C-k> ddkP
nnoremap <C-j> ddp
" `[ = default mark for the last selection start
" `] = default mark for the last selection end
vnoremap <C-k> xkP`[V`] 
vnoremap <C-j> xp`[V`]

" Paste from clipboard in insert mode {{{3
inoremap <C-r>e <C-r>+ 
cnoremap <C-r>e <C-r>+

" Remove search highlighting {{{3
nnoremap <leader>h :nohlsearch<CR>

" Redraws the screen {{{3
nnoremap <leader>d :redraw!<CR>

" Toggle display of tabs and EOF {{{3
nnoremap <leader>l :set list!<CR>

" Modify init.vim easily {{{3
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" FILETYPES {{{1
" Vimscript {{{2
augroup filetype_vim
  autocmd!
  autocmd FileType vim :setlocal foldmethod=marker
augroup END
