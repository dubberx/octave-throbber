% Print throbber.
function ans = throbb()
  global throbber;
  global throbber_running;

  throbs = { '-' '\' '|' '/' };
  if( throbber_running == 0)
	  fprintf(throbs{1});
	  throbber_running = 1;
  endif

  throbber = mod(throbber+1 - 1, 4) + 1;
  fprintf([repmat(13,1,1) throbs{throbber}]);
endfunction

