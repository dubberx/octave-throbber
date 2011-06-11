% Throbber example
% 
% Beware that printing other stuff in between the throbbed
% code sections will most likely screw up the cursor position.
% In that case, use the fprintf + repmat combo, even though
% that will probably overwrite the throbber: 
% 
%  fprintf([repmat(13,1,1) "DEBUG: I'am here: %d\n"], k);
% 
% -This is probably not the only bug/undocumented feature :)

more off

% Initialise throbber variables
init_throbber();

total = 0;
for n = 1:8
  % Before printing throbb'd variables, clear line
  clear_throbber();
  n
  for k = 1:n^2
    % Call throbb, won't print anything if init_throbber() has been run
    throbb();
    % Simulate work-loop with sleep
    sleep(0.04)
  end
  total += k;
end

% End throbbing
stop_throbber();

disp("Total loops:"); disp(total);
