
let g:ale_linters={'python':['pylint'],'vim':['vint'],'css':['stylelint'],'html':['htmlhint','stylelint']}

let g:ale_lint_delay=10
let g:ale_python_autopep8_use_global=1

let g:ale_fixers={'python':['yapf']}

let g:ale_fix_on_save=1
let g:ale_completion_enable=1
