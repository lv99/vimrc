set HOME_PATH=C:\Users\%USERNAME%\

echo "install font"
cd fonts & FontReg /copy & cd ..

echo "install pylint/yapf"
pip install pylint
pip install yapf
pip install vim-vint

echo "download vim-plug"
git clone https://github.com/junegunn/vim-plug.git

echo "copy files"
mkdir .vim\autoload
copy /Y .vimrc %HOME_PATH%
copy /Y vim-plug\plug.vim .vim\autoload\
mklink /J %HOME_PATH%\.vim .vim
