
for f in split(glob('~/.vim/vimrcs/*.vim'), '\n')
    exe 'source' f
endfor
