" Remap Leader key 
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

nmap <C-[> :nohl<CR>
"        <C-p>
"          ↑
"  <C-b> ←   →  <C-f>
"          ↓
"        <C-n>
imap <C-f> <Right>
imap <C-b> <Left>
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-a> <Home>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <Bs>
imap <C-w> <Esc>caw
imap <C-k> <ESC>d$a
imap <C-j> <Esc>o
" Switch window
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-c> <C-w>c
" dw daw
nmap <M-u> <Esc>caw
imap <M-u> <Esc>caw

nmap W :w<CR>
nmap Q :q<CR>

map <M-i> :<C-u>bp<CR>
map <M-o> :<C-u>bn<CR>
map <M-c> :bdelete<CR>
map <M-1> <Plug>BuffetSwitch(1)
map <M-2> <Plug>BuffetSwitch(2)
map <M-3> <Plug>BuffetSwitch(3)
map <M-4> <Plug>BuffetSwitch(4)
map <M-5> <Plug>BuffetSwitch(5)
map <M-6> <Plug>BuffetSwitch(6)
map <M-7> <Plug>BuffetSwitch(7)
map <M-8> <Plug>BuffetSwitch(8)
map <M-9> <Plug>BuffetSwitch(9)
map <M-0> <Plug>BuffetSwitch(10)
" Coc Keybinds
" <Tab>    snippet next
" <S-Tab>  snippet prev
" <C-e>	=> coc-explorer
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-Bslash> :TmuxNavigatePrevious<cr>
