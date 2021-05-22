if &compatible
  set nocompatible
endif

set number
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set clipboard=unnamedplus

set runtimepath+=~/.cache/dein/./repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('w0rp/ale')
  call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})

  " For Elixir
  call dein#add('elixir-lang/vim-elixir')

  " For TypeScript
  call dein#add('HerringtonDarkholme/yats.vim')

  " For JavaScript
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('maxmellon/vim-jsx-pretty')

  " For Svelte
  call dein#add('evanleck/vim-svelte')

  " For Elm
  " npm install -g elm elm-test elm-oracle elm-format @elm-tooling/elm-language-server
  call dein#add('andys8/vim-elm-syntax')

  " For Flutter/Dart
  call dein#add('dart-lang/dart-vim-plugin')

  " For HTML/CSS
  call dein#add('slim-template/vim-slim')
  call dein#add('wavded/vim-stylus')
  call dein#add('digitaltoad/vim-pug')

  " For rst
  call dein#add('gu-fan/riv.vim')

  " Theme
  call dein#add('mhartington/oceanic-next')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-fugitive')

  " Directory Tree
  call dein#add('scrooloose/nerdtree')

  " text style
  call dein#add('editorconfig/editorconfig-vim')

  " preview
  call dein#add('previm/previm')
  call dein#add('tyru/open-browser.vim')

  " Discord presence
  " call dein#add('aurieh/discord.nvim')
  
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

" -----------------------------------------------------
" Theme
" -----------------------------------------------------
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1

" -----------------------------------------------------
" Typing UX
" -----------------------------------------------------
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'elm': ['elm-format'], 'javascript': ['prettier'], 'javascriptreact': ['prettier'], 'typescript': ['prettier'], 'typescriptreact': ['prettier'], 'elixir': ['mix_format'], 'markdown': ['prettier'] }
let g:ale_elm_format_executable = 'elm-format'
let g:ale_javascript_prettier_use_local_config = 1

inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
nnoremap <ESC><ESC> :nohlsearch<CR>

nmap <leader>rename <Plug>(coc-rename)
nmap <silent> <leader>ref <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)

" -----------------------------------------------------
" Directory Tree
" -----------------------------------------------------
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" -----------------------------------------------------
" Syntax
" -----------------------------------------------------
autocmd BufNewFile,BufRead *.slim,*.slime setlocal filetype=slim


if dein#check_install()
  call dein#install()
endif

" -----------------------------------------------------
" Preview
" -----------------------------------------------------
let g:previm_custom_css_path = '~/dotfile/nvim/previm.css'

" -----------------------------------------------------
" Python
" -----------------------------------------------------
let g:python_host_prog = $HOME . '/.asdf/shims/python'
let g:python3_host_prog = $HOME . '/.asdf/shims/python3'
