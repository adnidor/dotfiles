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

map <F2> :w<CR>:make<CR>
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

