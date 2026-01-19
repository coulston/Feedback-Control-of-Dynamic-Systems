figure(1)
clf
set(1,'position',[100 100 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
plot(simout.time,simout.signals.values,'linewidth',2)
xlabel('Time')
ylabel('Temperature')
print -f1 -dpdf plotresults
% Note that although the steady state error and settling time
% specifications are met, the overshoot is over 20%. This is 
% due to the zero at -Ki/Kp = -1.08, which is close to the closed
% loop poles that have real part -.92
