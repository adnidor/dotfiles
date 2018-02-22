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
autocmd BufNewFile,BufRead /tmp/mutt* set noautoindent filetype=mail tw=78 digraph nolist
autocmd BufNewFile,BufRead ~/tmp/mutt* set noautoindent filetype=mail tw=78 digraph nolist

nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

