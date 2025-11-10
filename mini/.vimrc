" === VIM Configuration for Vim 9.1 ===
" Compatible with: WezTerm on macOS, zsh

" Enable syntax highlighting
syntax enable
filetype plugin indent on

" === INDENTATION SETTINGS ===
" Use spaces instead of tabs
set expandtab
" Number of visual spaces per TAB
set tabstop=4
" Number of spaces for autoindent and shift operations (>>, <<)
set shiftwidth=4

" Enable auto-indentation
set autoindent
" Improved autoindent for C-like programs
set smartindent

" === VISUAL SETTINGS ===
" Show line numbers
set number
" Show cursor position (line,column) in status line
set ruler
" Wrap long lines at window edge
set wrap

" === WHITESPACE VISUALIZATION ===
" Make invisible characters visible
set list
" Define how to display invisible characters:
"   tab:▸\  - Tabs show as ▸ with trailing spaces
"   trail:· - Trailing spaces show as ·
set listchars=tab:▸\ ,trail:·

" === SEARCH BEHAVIOR ===
" Case insensitive search...
set ignorecase
" ...unless search contains uppercase letters (smart)
set smartcase
" Highlight matches as you type
set incsearch
" Highlight all search matches
set hlsearch

" === BUFFER MANAGEMENT ===
" Allow hiding modified buffers (unsaved changes) without warning
set hidden

set directory=~/.vim/swapfiles//

"
" === RUST ===
autocmd BufNewFile,BufRead *.rs set filetype=rust
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

" Rust-specific settings
autocmd FileType rust setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType rust setlocal commentstring=//\ %s

" Rust.vim configuration
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'  " macOS specific

" Enable all Rust features
let g:rust_recommended_style = 1
