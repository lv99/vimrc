set HOME_PATH=C:\Users\%USERNAME%\

echo "install font"
cd fonts & FontReg /copy & cd ..

echo "install pylint"
pip install pylint
echo "install yapf"
pip install yapf
echo "install vim-vint"
pip install --pre vim-vint
echo "install stylelint"
npm install sytlelint
echo "install htmlhint"
npm install htmlhint
echo "install pygments"
pip install pygments

echo "download vim-plug"
git clone https://github.com/junegunn/vim-plug.git

echo "copy files"
mkdir .vim\autoload
copy /Y .vimrc %HOME_PATH%
copy /Y vim-plug\plug.vim .vim\autoload\
mklink /J %HOME_PATH%\.vim .vim

echo "set path"
set ENV_PATH=%PATH%   //获取原来环境变量

SETX /M PATH "%ENV_PATH:%~d0\tools\gtags\bin = %~d0\tools\gtags\bin%"
