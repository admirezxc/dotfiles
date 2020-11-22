call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'                " statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'luochen1990/rainbow'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'                 " add file icons
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
"Plug 'kevinhwang91/rnvimr'                    " vim ranger
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'bagrat/vim-buffet'
Plug 'easymotion/vim-easymotion'              " edition
Plug 'Yggdroot/LeaderF'
"Plug 'gcmt/wildfire.vim'
Plug 'terryma/vim-expand-region'


Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'moll/vim-bbye'
Plug 'mcchrish/nnn.vim'

Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'html', 'javascript', 'vue', 'css', 'less'] }
Plug 'posva/vim-vue'
Plug 'jparise/vim-graphql'
call plug#end()

" vim-expand_region_expand{{
nmap <CR> <Plug>(expand_region_expand)
" }}
" vim-buffet {{
" 
let g:buffet_separator = ''
let g:buffet_show_index = 1
let g:buffet_tab_icon = "\uf00a"
function! g:BuffetSetCustomColors()
    hi! BuffetCurrentBuffer cterm=NONE ctermbg=2 ctermfg=8 guibg=#BD93f9 guifg=#000000
    hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=2 guibg=#BD93f9 guifg=#000000
    hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
    hi! BuffetModCurrentBufferc term=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
    hi! BuffetModActiveBuffer term=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
    hi! BuffetModBuffer term=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
    hi! BuffetTrunc term=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
    hi! BuffetTab term=NONE ctermbg=5 ctermfg=8 guibg=#343746 guifg=#F8F8F2
endfunction
" }}


" nnn {{
" Disable default mappings
let g:nnn#set_default_mappings = 0

" Then set your own
nnoremap <silent> <leader>nn :NnnPicker<CR>


" Or override
" Start nnn in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>
" Opens the nnn window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

" }}

" autoformat {{
"let g:formatdef_custom_standard = '"standard --fix --stdin 2>/dev/null"'
"au BufWrite *.html,*.js,*.css,*.less,*.sass,*.vue  :Autoformat        " autoformat
" }}

" Beauty {{
let g:airline_powerline_fonts = 0
" Show buffers on top
"let g:airline#extensions#tabline#enabled=1
" Show buffers count
let g:airline#extensions#tabline#buffer_nr_show=1
" }}


" rnvimr {{
nnoremap <silent> <Leader>r :RnvimrToggle<CR>
" }}

" easymotion {{
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map J <Plug>(easymotion-jumptoanywhere)
" 重复上一次操作, 类似repeat插件, 很强大
map <leader>. <Plug>(easymotion-repeat)
" }}
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
""""""""""""""""""""""""""""""
"Leaderf settings
""""""""""""""""""""""""""""""
"文件搜索
nnoremap <silent> <Leader>ff :Leaderf file<CR>

"历史打开过的文件
nnoremap <silent> <Leader>fm :Leaderf mru<CR>

"Buffer
nnoremap <silent> <Leader>fb :Leaderf buffer<CR>

"函数搜索（仅当前文件里）
nnoremap <silent> <Leader>fF :Leaderf function<CR>

"模糊搜索，很强大的功能，迅速秒搜
nnoremap <silent> <Leader>fg :Leaderf rg<CR>

nnoremap <silent> <Leader>fl :LeaderfLine<CR>


" coc {{
" Coc Config cocconfig
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = ''
let g:coc_status_error_sign = ''
let g:coc_status_warning_sign = ''
let g:coc_global_extensions = [
            \ 'coc-html',
            \ 'coc-vetur',
            \ 'coc-css',
            \ 'coc-snippets',
            \ 'coc-eslint',
            \ 'coc-emmet',
            \ 'coc-tsserver',
            \ 'coc-json',
            \ 'coc-emoji',
            \ 'coc-lists',
            \ 'coc-stylelint',
            \ 'coc-template',
            \ 'coc-marketplace',
            \ 'coc-explorer',
            \ 'coc-vimlsp',
            \ 'coc-tailwindcss'
            \ ]
nmap <C-e> <Esc>:CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

inoremap <silent><expr> <C-o> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" }}

