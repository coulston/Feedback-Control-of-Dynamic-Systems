figure(1)
clf
ha=axes;
axis([-.25 1 -1 1])
set(ha,'visible','off')
arrow([-.25 0],[1 0]);
text(.9,-.1,'$t$')
text(-.15,.95,'$x(t)$')
arrow([0 -1],[0 1]);
hold on
t=0:.01:.9;
u=sin(80*t);
sys=tf([1000],[1 12 200]);
y=lsim(sys,u,t);
plot(t,y,'linewidth',2)
plotpdftex(1,'sineoutputpic',[1.4 1])