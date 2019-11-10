
function! OpenVimrc()
	" do something when opening 'vimrc' project
	echo 'opening vimrc'
endfunction

function! CloseVimrc()
	" do something when closing 'vimrc' project 
	echo 'closing vimrc'
endfunction

let g:MProjProjectList = [
	\{
		\'name':'vimrc',
		\'path':'C:\Users\lv99\.vim',
		\'open': function('OpenVimrc'),
		\'close': function('CloseVimrc'),
	\},
	\{
		\'name':'mproj',
		\'path':'C:\Users\lv99\.vim\plugged\MultiProject.vim',
	\},
	\{
		\'name':'recast',
		\'path':'D:\recastnavigation-1.5.1',
	\},
	\]

nmap <F2> :MProjToggle <CR>
nmap <C-F2> :source C:\Users\lv99\.vim\vimrcs\mproj.vim <CR>
