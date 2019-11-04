set HOME_PATH=C:\Users\%USERNAME%\

echo "download vim-plug"
curl -fLo %HOME_PATH%/.vim/autoload/plug.vim --create-dirs https://github.com/junegunn/vim-plug/blob/master/plug.vim

echo "copy files"
mkdir %HOME_PATH%\.vim
xcopy /S /Y /I .vimrc %HOME_PATH%
xcopy /S /Y /I .vim\colors %HOME_PATH%\.vim\colors
xcopy /S /Y /I .vim\vimrcs %HOME_PATH%\.vim\vimrcs