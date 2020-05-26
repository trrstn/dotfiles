"""""""""""""""" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'

Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'

call plug#end()

"""""""""""""""" Settings
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set noswapfile
set nowrap
set number
set mouse=a

set noshowmode
set title

"""""""""""""""" Enable Copy/Paste for urxvt
set clipboard=unnamedplus
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"""""""""""""""" Key bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
