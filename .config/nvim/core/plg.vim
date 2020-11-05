call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhinz/vim-startify'
	Plug 'ryanoasis/vim-devicons'
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-surround'
	" Highlight
	Plug 'RRethy/vim-illuminate'
	" Edit
	Plug 'jiangmiao/auto-pairs'
	" web
	Plug 'othree/html5.vim'
	Plug 'alvan/vim-closetag'
	Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'posva/vim-vue'
	" Pretty Dress
	"Plug 'bling/vim-bufferline'
	Plug 'bpietravalle/vim-bolt'
	Plug 'theniceboy/vim-deus'
	" Status line
	"Plug 'theniceboy/eleline.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	"Plug 'hardcoreplayers/spaceline.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'luochen1990/rainbow'
	"Plug 'mg979/vim-xtabline'
	Plug 'ap/vim-css-color'
	"Plug 'wincent/terminus'
	Plug 'hardcoreplayers/vim-buffet'
	Plug 'sandeepcr529/Buffet.vim'
	" Tools
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
	"markdown
	call plug#end()
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
	\ 'coc-tailwindcss',
	\ 'coc-pairs'
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
nnoremap <silent> H :call <SID>show_documentation()<CR>

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

" buffet
let g:buffet_use_devicons = 1
" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=8 ctermfg=8 guibg=#AF87D7 guifg=#3A3A3A
  
endfunction


" eleline
" let g:spaceline_seperate_style= 'slant-cons'
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:Powerline_symbols='fancy'
let Powerline_symbols='fancy'
set t_Co=256 " 状态栏就有颜色了

" vim markdown preview
let g:mkdp_path_to_chrome = "/opt/google/chrome/google-chrome"
