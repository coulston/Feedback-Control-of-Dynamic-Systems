sys=tf([15 10],[1 7 12])
sys2=tf(1,[1 1])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
step(sys,sys2);
