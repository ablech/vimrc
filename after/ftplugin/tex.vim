" Author: Michael Goerz
" Description: This file contains my local settings for latex files.

" General layout settings
setlocal textwidth=80  formatoptions=tcl12
setlocal shiftwidth=2 tabstop=2
setlocal wildignore+=*.aux,*.blg,*.log,*.out,*.snm,*.idx
setlocal wildignore+=*.ilg,*.ind,*.nav,*.lot,*.lof,*.toc
setlocal wildignore+=*.bbl,*.ent,*.svn
setlocal keywordprg='$HOME/.vim/scripts/wn_dict.sh'
setlocal iskeyword=@,48-57,_,192-255,:
setlocal suffixesadd=.tex,.tikz
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ %
setlocal autoindent

" Tex files can use spell checking
setlocal spell

noremap <silent> <leader>t :Voom latex<CR>:vertical resize 80<CR>
"Forward SyncTeX
nnoremap <leader>s :w<CR>:silent !$SYNCTEXREADER -g <C-r>=line('.')<CR> %<.pdf %<CR><C-l>

" Extra highlighting
hi! texSectionTitle gui=underline term=bold cterm=underline,bold
hi! Statement gui=none term=none cterm=none
