"Creamos la configuracion en esta localizacion devido a que asi lo pide
"vim-plug. para nvim (~/.config/nvim/init.vim) 
"verificar si existe carpeta nvim
"Para modificar el Bashrc Aqui esta mi config
"User= PS1='[ \[\e[2;3;53m\]\@ \[\e[0m\]] \[\e[38;5;220;1;3m\]\u\[\e[0m\]@\[\e[2;3m\]\H\[\e[0m\]:\[\e[97;1m\]\w\n\[\e[0;38;5;245m\]⊘ \[\e[38;5;220;1m\]⋗\[\e[0m\]'
"root= PS1='[ \[\e[2;3;53m\]\@ \[\e[0m\]] \[\e[38;5;220;1;3m\]\u\[\e[0m\]@\[\e[2;3m\]\H\[\e[0m\]:\[\e[97;1m\]\w\n\[\e[0;38;5;255m\]⊗ \[\e[38;5;220;1m\]⋗\[\e[0m\]'

"------------------Significado de cada linea-----------------------------

"1 La syntaxis muestra los errores
"2 Agregamos numero al editor
"3 Habilitamos el mouse en el editor
"4 Silencia Errores dentro del editor
"5 Hace mas pequeño las tabulaciones
"6 Cambia el comportamiento de tab como espacio
"7 Realiza sangria de manera automatica
"8 Muestra la posicion de los numero relativos
"9 Reducimos el espacio de los Numeros
"10 Mantiene el Texto en una sola linea.
"11 Quita mensaje de advertencia en los Archivos
"12 Quita la copia seguridad Mejor utilizar Github
"13 Mejora la Busqueda
"14 Ignora las mayus en la Busqueda
"15 Mejora el copy y paste 
"16 Habilitar Caracteres Nacionales
"17 Activa tema
"18 Crea una linea para advertir
"19 Agregamos color pero este Cambia por Theme




syntax on 
set number 
set mouse=a 
set noerrorbells
set expandtab
set smartindent
set rnu
set numberwidth=1
set nowrap 
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=UTF-8
set cursorline
set termguicolors

set colorcolumn=145
"aqui agregamos la forma de la linea en este caso cambiara apenas pongamos un
"tema nuevo esta cambiara de color y se adaptara al Theme.
highlight ColoColumn ctermbg=0 guibg=lightgrey

set splitbelow "movemos siempre la ventana a la izquierda de manera vertical
set splitright "movemos simpre la ventana a bajo de manera horizontal. terminal
set sw=2 sts=2
set smartindent
set showmatch
set showcmd
set ruler
set laststatus=2
set noshowmode
set smartcase
set hlsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
filetype plugin indent on
"Para pelgar codigo de lenguaje de programacion
set foldmethod=syntax
"set foldmethod=indent
set nofoldenable        "dont fold by default



"--------------------Agregamos Pluggins-------------------------------
call plug#begin()


"----------- Busqueda --------------
Plug 'junegunn/fzf.vim'                 "busquedas de archivos, lines
Plug 'junegunn/fzf'                     "Buscar Dentro del directorio actual Archivos
Plug 'voldikss/vim-floaterm'            "Emula una TERMINAL


"----------- Status Bar ------------
Plug 'vim-airline/vim-airline'          "Son Las Barras superiores y inferiores de los modos de vista
Plug 'vim-airline/vim-airline-themes'   "Es para agregarle un tema a las barras.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'   "para poner icono a direcotiro


"----------- Tmux ------------------
Plug 'benmills/vimux'  "Agrega una gran cantidad de snipett para autocompletado.


"-------- Autocomplementado -----
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Este modo tiene una gran variedad de lenguajes
"pero antes instale nodejs y npm para que funcione luego :cocConfig y 
"luego de ello buscar en su pagina para seguir las instrucciones y instalar
"lenguajes


"-------- TERMINAL ---------
Plug 'erietz/vim-terminator', { 'branch': 'main'} "ejecutar codigo de lenguajes de progra


"------- Sintax -----------
Plug 'sheerun/vim-polyglot' "resalta de color los lenguajes de progra
Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
Plug 'KabbAmine/vCoolor.vim'   "insertar color, alt +c, atl + r; alt + v
Plug 'valloric/matchtagalways' " Para sombrear etiquetas de inicio y de salida
Plug 'sbdchd/neoformat'  "prettier javascript
Plug 'easymotion/vim-easymotion' "agregamos un busqueda rapida

"------ test ---------
Plug 'tyewang/vimux-jest-test' "Usamos una Terminal particualar para realizar test
Plug 'janko-m/vim-test'


"------- IDE ---------
Plug 'terryma/vim-multiple-cursors' "Ctrl + n   v apregamos algo parecido a alt clik de vscode.
Plug 'easymotion/vim-easymotion'  "buscar una palabra en nuestra pagina actual <leader>s +(letra)
Plug 'Yggdroot/indentLine'              "indentacion
Plug 'scrooloose/nerdcommenter' "comentarios Ctrl + cc Comentar Ctrl + cu descomentar.
Plug 'jiangmiao/auto-pairs'             "autocompletado de llaves, corchetes, etc
Plug 'osyo-manga/vim-over' "OverCommandLine%s/ ENTER palabra/ busca palabra en archivo.
Plug 'tpope/vim-surround'  "Para envolver una palabra en un signo, corchete, parentesis
"Para poder envolver una palabra /// ysiw + signo
"Para cambiar de signo 'hello world' a un <p>hello world</p> /// digitamos cs'<q>
"Para eliminar un delimitador digitamos ds' /// 'hello' -> hello
"Para dar iconos a nuestros nvim
"Para reemplazar alguna palabra,  :%s/palbra antigua/palabra nueva
Plug 'tmhedberg/simpylfold' "plegado de codigo
Plug 'vim-scripts/TaskList.vim'  "Ctrl + t i
"todoshow para vim, todo,fixme en mayuscula
"funciona con <leader> t  #salir q, mantener ventana y volver a pantalla e


"------ GIT ---------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


"----------- Themes -------------
Plug 'jaredgorski/spacecamp'  "Tema Oscuro con Variantes moradas


call plug#end()



"----Atajos de Tecclado----

"Al apretar F5 y reiniciamos la configuracion de nvim
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>
"ingresamos al archivo de configuraciones con Espacio + e
nnoremap <F4> :e ~/.config/nvim/init.vim<CR>

"Desabilitados las flechas en modo Normal.
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>



"---Combinaciones de teclas---

"Abre Terminal con CTRL + t    En normal y visual
vnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>

"Abre terminal con Ctrl + T para reliazar una terminal de testing
"realiza un test a la linea mas sercana
"realiza un test por orden
"Realiza un test completo 
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>TT :TestSuite<CR>


let mapleader=" " "Tecla lider

"Espacio + w Guradar archivo
nnoremap <leader>w :w<CR>


"Espacio + ; Agrega al final de la linea un ;
nnoremap <Leader>; $a;<Esc>

"Espacio + q Salimos del archivo actual.
nnoremap <Leader>q :q<CR>

"F3 para explorador de directorios
nnoremap <F3> <Cmd>CocCommand explorer<CR>
nnoremap <F3> <Cmd>CocCommand explorer<CR>

"F2 para buscar lineas de codigo
noremap <silent> <F2> :Lines<CR>

"Espacio + p Buscamos Archivos dentro del navegador FZF
map <Leader>p :Files<cr>

"buffers Abrimos un navegador de archivos.
map <Leader>bf :Buffers<cr>

"#solo instalar lo de abajo y a la hora de copiar se podra
"pergar en la terminal de linux.
"sudo apt install xclip
nnoremap <Leader>y "+y<CR>



"Remplazo de Tmux  CTRL + Espacio + HJKL para moverse entre Ventanas
nnoremap <silent> <leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <leader><C-l> :TmuxNavigateRight<CR>



"Bajar o subir mas rapido.
nnoremap <c-j> 10<C-e>
nnoremap <c-k> 10<C-y>


"---Navegacion de Buffer (Ventanas)----

"Agustar tamaño de ventanas Con las Flechas de Direccion.
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>

"Espacio + k Te mueves al Ventana Siguiente.
nnoremap <leader>k :bnext<CR>

"Espacio + j Te mueves al Ventana Anterior.
nnoremap <leader>j :bprevious<CR>

"buffers
map <Leader>bf :Buffers<cr>

"Espacio + t Abre nueva Ventana.
nnoremap <leader>v :tabe<CR>

"Espacio + x Cerramos Ventana.
nnoremap <Leader>x :bdelete<CR>

"Espacio + vs Crea una ventana vertical
nnoremap <leader>vs :vsp<CR>

"Espacio + sp Crea una ventana Horizontal
nnoremap <leader>sp :sp<CR>



"#######################################
"CONFIGURACION THEME
"#######################################
colorscheme spacecamp




"##################################################################
"CONFIGURACION VIM AIRLINE (Barras de Arriba y abajo) tonalidad dark
"##################################################################
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='google_dark'

"let g:airline_statusline_ontop=0

let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b' , 'c', 'x' ],
    \ [ 'z', 'error' ]
    \ ]



"#######################################
"CONFIGURACION FLOATERM TERMINAL
"#######################################
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_keymap_toggle = '<F1>' 
"Agregamos con F1 una terminal para usar facil.



"##################################################################
"CONFIGURACION VIM AIRLINE
"##################################################################
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='google_dark'

"#######################################
"JS FORMAT NEOFORMAT, formateador de js, ts, react
"#######################################
"link: https://hashrocket.com/blog/posts/writing-prettier-javascript-in-vim
let g:neoformat_try_formatprg = 1
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,typescript,javascript.jsx setlocal formatprg=prettier\
                                                            \--stdin\
                                                            \--print-width\ 80\
                                                            \--single-quote\
                                                            \--trailing-comma\ es5
    autocmd BufWritePre *.ts,*.js,*.jsx Neoformat
augroup END



"#######################################
"Configuracion de Coc
"#######################################
"
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
