" footnotes.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

if exists("g:loaded_footnotes") || &cp
  finish
endif

let g:loaded_footnotes = 1

" Set footnote mode (date or numbers)
let g:footnotes_mode = 0

" Check for the footnotes date format
if !exists("g:footnotes_format")
  let g:footnotes_format = "%Y%m%d"
endif

" Command-line mappings
command! -nargs=0 FootnotesAppend call footnotes#Append()
command! -nargs=0 FootnotesRemove call footnotes#Remove()
command! -nargs=0 FootnotesToggle call footnotes#Toggle()
