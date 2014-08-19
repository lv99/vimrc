:set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

fu CscopeReload()
    cscope kill 0
    silent !start /B cmd /c "cscope.exe -Rbq"
endf

autocmd BufWritePost *.py call CscopeReload()
