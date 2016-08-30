let s:quickfixlist_is_open = 0

function! s:Copen()
  copen
  let s:quickfixlist_is_open = 1
  let s:quickfixlist_buffer = bufnr("%")
endfunction

function! s:Cclose()
  if s:quickfixlist_buffer == bufnr("%")
    " We are closing the quickfix window as we are still in it.
    " Return to the window we were previously in (not in the adjascent split)
    execute winnr('#') . "wincmd w"
  endif
  cclose
  let s:quickfixlist_is_open = 0
endfunction

function! s:Ctoggle()
  if s:quickfixlist_is_open
    call s:Cclose()
  else
    call s:Copen()
  endif
endfunction

command! Copen call s:Copen()
command! Cclose call s:Cclose()
command! Ctoggle call s:Ctoggle()

call OverrideBuiltInCommand("Copen", "cope", "copen")
call OverrideBuiltInCommand("Cclose", "ccl", "cclose")
