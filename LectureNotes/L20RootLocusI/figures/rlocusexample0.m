figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
s=tf([1 0],1);
G = 1/s^2;
rlocus(G)
print -dpdf -f1 rlocusexample0