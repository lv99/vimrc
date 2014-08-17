set nocompatible        
filetype off                      
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
Bundle 'gmarik/vundle'  
  
" My Bundles here:  
"     
" original repos on github 
Bundle 'mileszs/ack.vim'
Bundle 'taglist.vim'
" vim-scripts repos  
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
" non github repos 
  
filetype plugin indent on "   
"                                     
" Brief help  
" :BundleList          - list configured bundles  
" :BundleInstall(!)    - install(update) bundles  
" :BundleSearch(!) foo - search(or refresh cache first) for foo   
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles  
"     
" see :h vundle for more details or wiki for FAQ   
" NOTE: comments after Bundle command are not allowed.. 
"
