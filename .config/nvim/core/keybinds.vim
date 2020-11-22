" Remap Leader key
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
nmap j gj


nmap <M-1> <Plug>BuffetSwitch(1)
nmap <M-2> <Plug>BuffetSwitch(2)
nmap <M-3> <Plug>BuffetSwitch(3)
nmap <M-4> <Plug>BuffetSwitch(4)
nmap <M-5> <Plug>BuffetSwitch(5)
nmap <M-6> <Plug>BuffetSwitch(6)
nmap <M-7> <Plug>BuffetSwitch(7)
nmap <M-8> <Plug>BuffetSwitch(8)
nmap <M-9> <Plug>BuffetSwitch(9)
nmap <M-0> <Plug>BuffetSwitch(10)

nmap <M-q> <Esc>:bp<CR>
imap <M-q> <Esc>:bp<CR>
nmap <M-w> <Esc>:bd<CR>
imap <M-w> <Esc>:bd<CR>
nmap <M-e> <Esc>:bn<CR>
imap <M-e> <Esc>:bn<CR>


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
nmap Q :conf q<CR>

map <Leader>h :<C-u>bp<CR>
map <Leader>l :<C-u>bn<CR>
map <Leader>c :Bdelete<CR>
" Coc Keybinds
" <Tab>    snippet next
" <S-Tab>  snippet prev
" <C-e>	=> coc-explorer
