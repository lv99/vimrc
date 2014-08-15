set runtimepath+=~/.vim

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/vundle.vim 

try
source ~/.vim/my_configs.vim
catch
endtry
