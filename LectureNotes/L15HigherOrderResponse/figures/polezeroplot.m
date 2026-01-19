sys=tf([1 2 2 0],[1 8 24 32 15])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
pzplot(sys)
print -f1 -dpdf polezeroplot.pdf
