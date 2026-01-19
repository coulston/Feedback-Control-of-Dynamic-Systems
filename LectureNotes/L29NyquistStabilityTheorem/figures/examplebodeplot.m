clear all
s=tf([1 0],1)
sys = 5*(s+1)*(s-50)/(s^2*(s^2+10*s+100));


figure(1)
clf
set(1,'position',[300 400 600 500])
set(1,'papersize',[6 5])
set(1,'paperposition',[0 0 6 5])
h=bodeplot(sys);
setbode(h)

print -f1 -dpdf examplebodeplot_1
