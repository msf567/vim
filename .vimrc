syntax enable " enable syntax processing
set viminfo+=n~/.vim/viminfo

"   COLORS{{{
colorscheme distinguished
"}}}
"   SPACES & TABS{{{
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
"}}}
"   UI CONFIG{{{
set number " line numbers
set showcmd " show command in bottom bar
set cursorline " highlight cursor line
filetype indent on " enables loading specific indent config files depending on filetype loaded
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when need to
set showmatch " highlight matching [{()}]
" }}}
"   SEARCHING{{{
set incsearch " seach as characters are entered
set hlsearch " highlight matches
"turn off search highlight
nnoremap <leader>. :nohlsearch<CR> 
"}}}
"   FOLDING{{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested folds max
" s[ace open/closes folds
nnoremap <space> za
set foldmethod=syntax " fold based on indent levels
"}}}
"   MOVEMENT{{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
"nnoremap B ^
"nnoremap E $
" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
"}}}
"   LEADER SHORTCUTS {{{
let mapleader=","   " leader is comma
inoremap jk <esc>
"toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>
"}}}
"   CTRLP {{{
" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"}}}
"   LAUNCH CONFIG {{{
call pathogen#infect()                      " use pathogen
" }}}
"   TMUX {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
"   BACKUPS {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
"   GUTENTAGS{{{
set runtimepath^=~/.vim/bundle/vim-gutentags/plugin/gutentags.vim
set statusline+=%{gutentags#statusline()}
let g:gutentags_project_root = ['xcodeproj']
"}}}

set runtimepath^=~/.vim/bundle/coc.nvim/plugin/coc.vim    
"
" vim:foldmethod=marker:foldlevel=0

