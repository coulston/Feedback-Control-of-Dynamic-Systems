figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
C = tf([1 1],[1 10]);
G = tf(1,[1 3 4]);
H = 160;
nyquist(H*G*C)
print -f1 -dpdf matlabnyquist