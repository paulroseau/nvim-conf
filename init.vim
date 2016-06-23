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
