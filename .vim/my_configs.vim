""""""""""""""""""""
"Taglist
""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

"""""""""""""""""""""
"nmap
"""""""""""""""""""""""
nmap <F3> :NERDTree <CR>
nmap <F4> :TlistOpen <CR>

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR> 

set nu

cd c:\Users\Kami\Documents\Github\skynet

cs a c:\Users\Kami\Documents\Github\skynet\cscope.out
