nmap <F3> :call O()<CR>
func O()
	exec "w"
	exec "!open % &"
endfunc

nmap <F5> :call A()<CR>
func A()
	exec "wa"
	if &filetype == 'c'
		exec "!gcc % -o %< -Wall -O2 && ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %< -Wall -O2 -std=c++17 && ./%<"
	elseif &filetype == 'java'
		exec "!javac % && java %<"
	endif
endfunc

nmap <F6> :call C()<CR>
func C()
	exec "wa"
	if &filetype == 'c'
		exec "!gcc % -o %< -Wall -O2 && ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %< -Wall -std=c++17 -O2"
	elseif &filetype == 'java'
		exec "!javac %"
	endif
endfunc

nmap <F7> :call R()<CR>
func R()
	if &filetype == 'c' || &filetype == 'cpp'
		exec "!./%<"
	elseif &filetype == 'java'
		exec "!java %<"
	endif
endfunc

set autoindent
set cindent
set tabstop=4
set shiftwidth=4

set nu
set ruler
set cursorline

syntax on
colorscheme molokai
