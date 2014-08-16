set runtimepath+=~/.vim

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/vundle.vim 
source ~/.vim/vimrcs/nerdtree.vim 
source ~/.vim/vimrcs/taglist.vim 

try
source ~/.vim/my_configs.vim
catch
endtry
