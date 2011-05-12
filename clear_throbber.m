% Clear current throbber. This allows for normal
% printing of text, vars, etc.
function ans = clear_throbber()
  global throbber_running;

  if(throbber_running != 0)
    fprintf([repmat(13,1,1) '']);
  end

endfunction
