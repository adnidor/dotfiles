set nu
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set autoindent
set clipboard=unnamedplus
syntax on
cmap wsudo -s w sudo -s tee > /dev/null %
autocmd FileType make setlocal noexpandtab
autocmd FileType tex set makeprg=pdflatex\ %
autocmd BufNewFile,BufRead /tmp/mutt* set noautoindent filetype=mail tw=78 nolist
autocmd BufNewFile,BufRead ~/tmp/mutt* set noautoindent filetype=mail tw=78 nolist

set undofile
set undodir=$HOME/.vim/undo

map <F2> :w<CR>:make<CR>
inoremap <F3> :math:`
inoremap <F4> \Rightarrow
inoremap <F5> \frac{
autocmd FileType tex inoremap \N<space> \mathbb{N}
autocmd FileType tex inoremap \R<space> \mathbb{R}
autocmd FileType rst inoremap \N<space> \mathbb{N}
autocmd FileType rst inoremap \R<space> \mathbb{R}
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

