""""""""""""""""""""""
" General Settings
""""""""""""""""""""""



" Set the leader
"
let mapleader=","

" I don't use octal- not needed >= vim 8.0
set nrformats-=octal

" tell nvim about the virtualenv I created for it!
let g:python3_host_prog = '/home/m8ryx/.venvs/neovim/bin/python'

" nvim-specific configs
if has('nvim')
  " handle escape in terminal mode
  tnoremap <C-v><Esc> <C-\><C-n>
"  tnoremap <C-v><Esc> <Esc>

  " color the terminal cursor in terminal mode
  " cursor in focused terminal 
"  highlight! link TermCursor Cursor
  " cursor in unfocused terminal 
  highlight! TermCursorNC guibg=Red guifg=white ctermbg=1 ctermfg=15 
endif

" navigating windows

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""""""""""""""""""""""""""""""
"" Buffer and Window splits
"" https://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
""""""""""""""""""""""""""""w
" window
nmap <leader>swl  :topleft  vnew<R>
nmap <leader>swh :botright vnew<CR>
nmap <leader>swk    :topleft  new<CR>
nmap <leader>swj  :botright new<CR>
" buffer
nmap <leader>sl   :leftabove  vnew<CR>
nmap <leader>sh  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

"""""""" end Buffer """""""""""""""""


if has('nvim')
	tnoremap <C-h> <C-\><C-n><C-w>h
	tnoremap <C-j> <C-\><C-n><C-w>j
	tnoremap <C-k> <C-\><C-n><C-w>k
	tnoremap <C-l> <C-\><C-n><C-w>l
endif

""" search functions

" unhightlight search
:nmap <leader>q :nohlsearch<CR>

" Preferred editor # vim book
" deal with nested nvim with git - not 100% sure why we don't do this login in
" the .bashrc
if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

