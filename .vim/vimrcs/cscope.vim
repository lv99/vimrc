:set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

fu CscopeReload()
    cscope kill 0
	if has("win16") || has("win32")
    	silent !start /B cmd /c "cscope.exe -Rbq"
		silent !start /B cmd /c "ctags.exe -R"
	else
		silent !cscope -Rbq
		silent !ctags -R
	endif
endf

autocmd BufWritePost *.c,*.cpp,*.h,*.lua,*.py call CscopeReload()
