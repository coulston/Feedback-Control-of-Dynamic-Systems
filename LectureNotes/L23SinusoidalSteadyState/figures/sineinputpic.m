figure(1)
clf
ha=axes;
axis([-.25 1 -1 1])
set(ha,'visible','off')
arrow([-.25 0],[1 0]);
text(.9,-.1,'$t$')
text(-.15,.95,'$u(t)$')
arrow([0 -1],[0 1]);
hold on
t=0:.001:.9;
plot(t,.7*sin(80*t),'linewidth',2)
plotpdftex(1,'sineinputpic',[1.4 1])