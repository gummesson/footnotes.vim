" footnotes.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" ~ Toggle
function! footnotes#Toggle()
  if (g:footnotes_mode == 0)
    let g:footnotes_mode = 1
    call footnotes#Append()
  else
    let g:footnotes_mode = 0
    call footnotes#Strip()
  endif
endfunction

" ~ Footnotes
function! footnotes#Append()
  call s:save_cursor()
  let date = strftime(g:footnotes_format)
  silent exec '%s/\v\[\^/\[\^'.date.'-/g'
  call s:restore_cursor()
endfunction

function! footnotes#Strip()
  call s:save_cursor()
  silent exec '%s/\v\[\^(\d+)-/\[\^/g'
  call s:restore_cursor()
endfunction

" ~ Cursor
function! s:save_cursor()
  " Get cursor position
  let s:cursor_line = line(".")
  let s:cursor_col = col(".")
endfunction

function! s:restore_cursor()
  " Restore cursor position
  call cursor(s:cursor_line, s:cursor_col)
endfunction
