sys=tf([15 10],[1 7 12])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
impulse(sys);
print -f1 -dpdf matlabimpulse

figure(2)
clf
set(2,'position',[10 10 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
step(sys);
print -f2 -dpdf matlabstep

figure(3)
clf
set(3,'position',[10 10 500 400])
set(3,'papersize',[5 4])
set(3,'paperposition',[0 0 5 4])
step(sys*tf([1],[1 0]));
title('Ramp response')
print -f3 -dpdf matlabramp
