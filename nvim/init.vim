let g:python3_host_prog = "/Users/evgeniyrru/.pyenv/shims/python" " ready
call plug#begin('~/.vim/plugged')

  " Plugins
Plug 'junegunn/vim-easy-align' 
Plug 'scrooloose/nerdtree' 
Plug 'cakebaker/scss-syntax.vim' 
Plug 'vim-ruby/vim-ruby' 
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-rails' 
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-abolish' 
Plug 'tpope/vim-unimpaired' 
Plug 'tpope/vim-obsession' 
" Plug 'tpope/vim-haml'
Plug 'itchyny/lightline.vim' 
" Plug 'vim-airline/vim-airline'
Plug 'pantharshit00/vim-prisma' 
Plug 'pangloss/vim-javascript' 
Plug 'leafgarland/typescript-vim' 
Plug 'peitalin/vim-jsx-typescript' 
Plug 'digitaltoad/vim-jade' 
" Plug 'powerline/powerline' 
Plug 'MaxMEllon/vim-jsx-pretty' 
Plug 'myusuf3/numbers.vim' 
Plug 'plasticboy/vim-markdown' 
Plug 'wavded/vim-stylus' 
Plug 'posva/vim-vue' 
Plug 'mustache/vim-mustache-handlebars' 
Plug 'martinda/Jenkinsfile-vim-syntax' 
Plug 'chr4/nginx.vim' 
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql' 
Plug 'easymotion/vim-easymotion' 
Plug 'Olical/conjure', { 'tag': 'v2.1.2', 'do': 'bin/compile' } 
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'moll/vim-bbye' 
Plug 'embear/vim-localvimrc' 
Plug 'kshenoy/vim-signature' 
" Plug 'mhinz/vim-startify'
" Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go' 
Plug 'StanAngeloff/php.vim' 
Plug 'phpactor/phpactor' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim' 
Plug 'majutsushi/tagbar' 
Plug 'rhysd/vim-grammarous'

Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets' 
" Color schemes
Plug 'arcticicestudio/nord-vim' 
Plug 'ayu-theme/ayu-vim' 
Plug 'joshdick/onedark.vim' 
Plug 'sainnhe/sonokai' 
Plug 'morhetz/gruvbox' 

Plug 'reasonml-editor/vim-reason-plus' 
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' } 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'rescript-lang/vim-rescript' 
Plug 'elm-tooling/elm-vim' 

Plug 'neovim/nvim-lspconfig' " ready
call plug#end()

let mapleader = " " " ready

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
" set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

set spellfile=~/.config/nvim/spell/en.utf-8.add

" Use system clipboard
set clipboard+=unnamed
set termguicolors

set numberwidth=5

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
" au BufNewFile,BufRead * set number
au BufNewFile,BufRead *.ejs set ft=html
au BufNewFile,BufRead *.styl set ft=stylus

au BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
au BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd Filetype php setlocal ts=4 sts=4 sw=4

set termguicolors
let ayucolor="dark"
colorscheme gruvbox

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let NERDTreeShowHidden = 1
let NERDTreeShowBookmarks = 1

nmap <silent> <C-p> :GFiles <enter>
nmap <silent> <Leader>c :Buffers <enter>
nmap <Leader>x :Ag 
nmap <Leader>z :Rg 
nmap <silent> <Leader>d :Bdelete <enter>
nmap <silent> <Leader>t :tabclose <enter>
nmap <silent> <Leader>T :tabnew <enter>

nmap <silent> n<C-d> :NERDTreeClose<CR>
nmap <silent> n<C-f> :NERDTreeFind<CR>
nmap <silent> n<C-n> :NERDTree<CR>
nmap <silent> n<C-t> :NERDTreeToggle<CR>
vnoremap // y/<C-R>"<CR>

" CoC integration
" CoC prettier
vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)

nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

nmap <F8> :TagbarToggle<CR>

" Configure NeoVim terminal
tnoremap <Esc> <C-\><C-n>

" CoC configs
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories ="~/.config/nvim/UltiSnips"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"

let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

let g:lightline = {
      \ 'component': {
      \   'lineinfo': '%3l:%-2v',
      \ }
      \ }

let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}
let g:markdown_folding = 1
let g:vim_markdown_folding_disabled = 1
function! s:getVisualSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)

    if len(lines) == 0
        return ""
    endif

    let lines[-1] = lines[-1][:column_end - (&selection == "inclusive" ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]

    return join(lines, "\n")
endfunction

vnoremap <silent><leader>X <Esc>:Ag <C-R>=<SID>getVisualSelection()<CR><CR>
nnoremap <silent><leader>X :Ag <C-R>=expand("<cword>")<CR><CR>

" let g:localvimrc_whitelist='/Users/emchernyshev/work/.*'
