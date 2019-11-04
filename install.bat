set HOME_PATH=C:\Users\%USERNAME%\

echo "download vim-plug"
git clone https://github.com/junegunn/vim-plug.git

echo "copy files"
mkdir .vim\autoload
copy /Y .vimrc %HOME_PATH%
copy /Y vim-plug\plug.vim .vim\autoload\
mklink /J %HOME_PATH%\.vim .vim
