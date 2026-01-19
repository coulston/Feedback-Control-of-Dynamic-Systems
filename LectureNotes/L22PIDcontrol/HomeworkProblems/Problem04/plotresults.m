figure(1)
clf
set(1,'position',[100 100 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
plot(simout.time,simout.signals.values,'linewidth',2)
xlabel('Time')
ylabel('Temperature')
print -f1 -dpdf plotresults
% The settling time specification is met with a large margin
% The closed loop poles are actually both real, and this is
% an overdamped case.
