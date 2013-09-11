" footnotes.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" ~ Toggle footnotes
function! footnotes#Toggle()
  if (g:footnotes_mode == 0)
    let g:footnotes_mode = 1
    call footnotes#Append()
  else
    let g:footnotes_mode = 0
    call footnotes#Remove()
  endif
endfunction

" ~ Footnotes functions
function! footnotes#Append()
  call s:save_history()
  call s:save_cursor()
    let date = strftime(g:footnotes_format)
    silent! execute '%s/\v\[\^/\[\^'.date.'-/g'
  call s:restore_cursor()
  call s:restore_history()
endfunction

function! footnotes#Remove()
  call s:save_history()
  call s:save_cursor()
    silent! execute '%s/\v\[\^(\d+)-/\[\^/g'
  call s:restore_cursor()
  call s:restore_history()
endfunction

" ~ Search history
function! s:save_history()
  let s:search_history=@/
endfunction

function! s:restore_history()
  let @/=s:search_history
endfunction

" ~ Cursor
function! s:save_cursor()
  let s:cursor_line = line(".")
endfunction

function! s:restore_cursor()
  call cursor(s:cursor_line, "0")
endfunction
