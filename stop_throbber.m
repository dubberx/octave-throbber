% Stop -- reset, really -- the throbber, and
% reset the cursor line.

function ans = stop_throbber()
  global throbber_running;

  throbber_running = 0;
  fprintf([repmat(13,1,1) ' ']);
  fprintf([repmat(8,1,1) '']);
endfunction
