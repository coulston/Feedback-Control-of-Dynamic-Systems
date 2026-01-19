sys=tf([1],[1 1])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[.1 .1 4.9 3.9])
[y,t]=step(sys,6);
y=[zeros(10,1);y];
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];
plot(t,y,'linewidth',2)
set(gca,'xtick',[0 1 2 3 4 4.6 5],'xticklabel',{'0','$\frac{1}{\sigma}$','$\frac{2}{\sigma}$','$\frac{3}{\sigma}$','$\frac{4}{\sigma}$','$t_{s}$','$\frac{5}{\sigma}$'})
set(gca,'ytick',[.64 1],'yticklabel',{'$.64K$','$K$'})
hold on
plot([min(t) 4.6],[.99 .99],'k:','linewidth',1)
plot([4.6 4.6],[.99 0],':k','linewidth',1)
plot([min(t) 1],[.64 .64],'k:','linewidth',1)
plot([1 1],[.64 0],':k','linewidth',1)
hold off
set(gca,'position',[.2,.2,.7,.75])
axis([min(t) max(t) 0 1])
set(gca,'fontsize',14)
text(2.25,-.2,'\textsf{Time (s)}','horizontalalignment','center')
text(-2,.5,'\textsf{Magnitude}','Rotation',90,'verticalalignment','middle','horizontalalignment','center')
plotpdftex(1,'stepresponse',[1.5 1])
