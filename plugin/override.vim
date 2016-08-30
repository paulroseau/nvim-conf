" This file features overrides of built in commands using the following
" tip : http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev

function! OverrideBuiltInCommand(overridingCommand, builtInCommand, ...)
  try
    if a:0
      if strlen(a:1) <= strlen(a:builtInCommand)
        let shortCommand = a:1
        let longCommand = a:builtInCommand
      else
        let shortCommand = a:builtInCommand
        let longCommand = a:1
      endif
      let builtInCommands = s:Prefixes(shortCommand, longCommand)
    else
      let builtInCommands = [ a:builtInCommand ]
    endif
    call s:OverrideBuiltInCommands(a:overridingCommand, builtInCommands)
  catch /.*is not a prefix.*/
    echoerr printf("Command not overriden (%s)", v:exception)
  endtry
endfunction

" Private helper methods

function! s:OverrideBuiltInCommands(overridingCommand, builtInCommands)
  for c  in a:builtInCommands
    execute 'cabbrev <expr>' . c . " <SID>IfIsExCommandOr(\"" . a:overridingCommand . '", "' . c . '")'
    " execute 'cabbrev <expr>' . c . ' IfIsExCommandOr("' . a:overridingCommand . '", "' . c . '")'
  endfor
endfunction

function! s:IfIsExCommandOr(ifExCommand, else)
  if getcmdtype() == ":"
    return a:ifExCommand
  else
    return a:else
endfunction

" s:Prefixes("hel", "hello") => ["hell", "hello"]
function! s:Prefixes(firstPrefix, fullWord)
  if stridx(a:fullWord, a:firstPrefix) != 0
    throw printf("%s is not a prefix of %s", a:firstPrefix, a:fullWord)
  endif
  let idx = strlen(a:firstPrefix)
  let res = [ a:firstPrefix ]
  while idx < strlen(a:fullWord)
    let res = add(res, a:fullWord[0:idx])
    let idx += 1
  endwhile
  return res
endfunction
