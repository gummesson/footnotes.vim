" footnotes.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" Don't reload the plugin if it already exists or if compatible mode is set
if exists("g:loaded_footnotes") || &cp
  finish
endif

" If it gets loaded, make sure that it doesn't get reloaded again
let g:loaded_footnotes = 1
" Set footnote mode (date or numbers)
let g:footnotes_mode = 0

" Check for the footnotes date format
if !exists("g:footnotes_format")
  let g:footnotes_format = "%Y%m%d"
endif

" Map :FootnotesAppend
command! -nargs=0 FootnotesAppend call footnotes#Append()
" Map :FootnotesStrip
command! -nargs=0 FootnotesStrip call footnotes#Strip()
" Map :FootnotesToggle
command! -nargs=0 FootnotesToggle call footnotes#Toggle()
