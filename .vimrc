:set number relativenumber
:set tabstop=4
:set shiftwidth=4
:set smartindent
:set matchtime=2
:set wrap
:set mouse=a
:set autoread
:set cursorline
:set splitright
:set splitbelow
:hi CursorLine ctermbg=Black ctermfg=None cterm=underline
:set nocompatible
:syntax enable
:filetype plugin on
:set path+=**
:set wildmenu
:command! MakeTags !ctags -R .
" ^]	: jump to tag under cursor
" g^]	: for ambiguous tags
" ^t	: to jump back up the tag stack

" AUTOCOMPLETE : documentation in |ins-completion|
" use <:help ins-completion> for more information.

" HIGHLIGHTS :
" ^x^n	: just in current file
" ^x^f	: for filenames use the set path+=** trick
" ^x^]	: for tqgs only
" ^n	: for anything specified by the 'complete' option

" File browser (netrw) configuration :
" use <:help netrw-browse-maps> for a fully documented 
" tremendous list of shortcuts
let g:netrw_banner=0 "disable annoying (?) banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_list_style=3 "disable annoying (?) banner
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\)\+'

" BUILD INTEGRATION:
:set makeprg=make
" Now, typing :make will build my program through make program
" :cl	: to list errore
" :cc#	: to jump to error number #
" :cn	: to jump to next error
" :cp	: to jump to previous error

" Highlights the 81 column
:highlight ColorColumn ctermbg=red  
:call matchadd('ColorColumn', '\%81v', 100)

" Decorate the Cursor line differently in insert mode only
:autocmd InsertEnter * highlight CursorLine ctermbg=Black ctermfg=None cterm=None
:autocmd InsertLeave * highlight CursorLine ctermbg=Black ctermfg=None cterm=underline

:let mapleader = ","
"Mappings
:nnoremap <C-h> <<
:nnoremap <C-l> >>
:vnoremap <C-h> <gv
:vnoremap <C-l> >gv
:nnoremap <C-k> ddP
:nnoremap <C-j> ddp
:inoremap <C-U> <esc>viwUei
:inoremap <C-u> <esc>viwuei
:nnoremap <Leader>cv :vsplit $MYVIMRC <cr>
:nnoremap <Leader>sv :source $MYVIMRC <cr>
:nnoremap <Leader>ev :edit $MYVIMRC <cr>
:nnoremap <C-w>k <C-w><Up>
:nnoremap <C-w>j <C-w><Down>
:nnoremap <C-w>l <C-w><Right>
:nnoremap <C-w>h <C-w><Left>
:inoremap ( ()<Left>
:inoremap () ()<Left>
:inoremap ()<Left> ()<Left>
:inoremap { <Esc>o{}<Left><cr><Backspace><cr><Up><Tab>
:inoremap {} {}
:inoremap [ []<Left>
:inoremap [] []<Left>
:inoremap []<Left> []<Left>
:inoremap , ,<Space>
:inoremap ,<Space> ,<Space>
:inoremap " ""<Left>
:inoremap "" ""<Left>
:inoremap ""<Left> ""<Left>
:inoremap \" \"
:inoremap ' ''<Left>
:inoremap '' ''<Left>
:inoremap ''<Left> ''<Left>
:inoremap ; <Esc>$a;
:inoremap ù <Esc>o
"-- Mappings End
:hi Folded ctermbg=Black
" Folds setup
:set foldmethod=syntax
:set nofoldenable
