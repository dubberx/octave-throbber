% Print throbber.
function ans = throbb()
  global use_throbber;
  global throbber;
  global throbber_running;

  if(use_throbber == 1)
    throbs = { '-' '\' '|' '/' };
    if( throbber_running == 0)
      fprintf(throbs{1});
      throbber_running = 1;
    endif

    throbber = mod(throbber+1 - 1, 4) + 1;
    fprintf([repmat(13,1,1) throbs{throbber}]);
  endif
endfunction

