setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class 
setlocal foldnestmax=2
setlocal ts=4 
setlocal formatoptions=croql 
setlocal textwidth=79 nofoldenable
setlocal omnifunc=pythoncomplete#Complete
setlocal keywordprg='$HOME/.vim/scripts/python_help.pl'
setlocal pumheight=15
setlocal completeopt=menu,menuone
setlocal nospell
compiler pylint
let b:SuperTabDefaultCompletionType = "<c-x><c-o>"
setlocal tags+=/usr/lib/python/tags
