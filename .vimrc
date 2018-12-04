""""""""""""""""""""""""""""""
" => Install Plugs
""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  echo "GOT INTO HERER"
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yegappan/mru'
Plug 'tpope/vim-haml'
Plug 'ekalinin/Dockerfile.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'jlanzarotta/bufexplorer'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'

""" Themes
Plug 'srcery-colors/srcery-vim'
Plug 'aradunovic/perun.vim'
Plug 'Alvarocz/vim-northpole'
Plug 'nightsense/seagrey'
Plug 'tssm/fairyfloss.vim'
Plug 'muellan/am-colors'

call plug#end()

""""""""""""""""""""""""""""""
" => asyncrun plugin
""""""""""""""""""""""""""""""
autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %

""""""""""""""""""""""""""""""
" => ale plugin
""""""""""""""""""""""""""""""
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

""""""""""""""""""""""""""""""
" => emmet-vim plugin
""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = { 'javascript.jsx' : { 'extends' : 'jsx', } }

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize=40
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show statusline
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => buffer switch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>. :bn<CR>
nnoremap <Leader>, :bp<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color and theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
"""colorscheme srcery
set relativenumber
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set Vim working directory to the current location
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autochdir


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent Guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
nmap <F6> :IndentGuidesToggle<CR>
set ts=2 sw=2 et


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UTF-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 

