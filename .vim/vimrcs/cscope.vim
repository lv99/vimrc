:set cscopequickfix=s-,c-,d-,i-,t-,e-,g-,f-

fu CscopeReload()
    cscope kill 0
	if has("win16") || has("win32")
    	silent !start /B cmd /c "dir /s /b *.py >cscope.files & cscope.exe -Rb"
	else
		silent !cscope -Rbq
	endif
endf

nmap <leader>bb :call CscopeReload()<cr>

function QfMakeConv()
	let qflist = getqflist()
	for i in qflist
python << pythoncore
import vim
import re
sText=vim.eval("bufname(i.bufnr)")
res=re.match("\D+(\d+).py",sText)
res2=re.match("\D+(\d+)\D+.py",sText)
if res and len(res.groups()[0])>2:
	vim.command("let l:res = 1")
elif res2 and len(res2.groups()[0])>2:
	vim.command("let l:res = 1")
else:
	vim.command("let l:res = 0")
pythoncore
		if l:res == 1
			call remove(qflist, index(qflist,i))
		endif
	endfor
	call setqflist(qflist)
endfunction

nmap <leader>fq :call QfMakeConv()
