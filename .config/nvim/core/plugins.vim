call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'                " statusbar
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'luochen1990/rainbow'
	Plug 'ap/vim-css-color'
	Plug 'ryanoasis/vim-devicons'                 " add file icons
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-surround'
    Plug 'kevinhwang91/rnvimr'                    " vim ranger
  
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'honza/vim-snippets'
    
    Plug 'easymotion/vim-easymotion'              " edition
    Plug 'Yggdroot/LeaderF'

    Plug 'Chiel92/vim-autoformat'
	Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'html', 'javascript', 'vue', 'css', 'less'] }
	Plug 'posva/vim-vue'
    Plug 'jparise/vim-graphql'

call plug#end()
" autoformat {{
let g:formatdef_custom_js = '"js-beautify -t"'
let g:formatters_javascript = ['custom_js']
au BufWrite *.js :Autoformat		 " autoformat


" }}

" Beauty {{
let g:airline_powerline_fonts = 0
" Show buffers on top
let g:airline#extensions#tabline#enabled=1
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
	\ 'coc-prettier',
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
nmap <C-e> :CocCommand explorer<CR>
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

