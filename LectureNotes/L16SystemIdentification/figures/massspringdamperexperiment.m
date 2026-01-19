set(0,'defaulttextinterpreter','latex')
sys=tf([3.4*3],[1 .5 .75])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
[y,t]=step(sys,20);
y=[zeros(10,1);y];
y=y+0.15*randn(size(y));
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];
h1=plot(t,y);
grid
set(gca,'fontname','times')
set(gca,'fontsize',14)
set(h1,'linewidth',2);
set(get(gca,'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(gca,'Ylabel'),'String','Radians','fontsize',14,'fontname','helvetica','interpreter','none');
print -dpdf -f1 massspringdamperexperiment1

sys=tf(13.5*(1.25^2),[1 2*0.26*1.25 1.25^2])
figure(2)
clf
set(2,'position',[10 10 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
[y,t]=step(sys,20);
h1=plot(t,y);
grid
set(gca,'fontname','times')
set(gca,'fontsize',14)
set(h1,'linewidth',2);
set(get(gca,'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(gca,'Ylabel'),'String','Radians','fontsize',14,'fontname','helvetica','interpreter','none');
print -dpdf -f2 massspringdamperexperiment2


sys=tf(13.5*(1.25^2),[1 2*0.26*1.25 1.25^2])
figure(2)
clf
set(2,'position',[10 10 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
[y,t]=step(sys,20);
h1=plot(t,y);
grid
set(gca,'fontname','times')
set(gca,'fontsize',14)
set(h1,'linewidth',2);
set(get(gca,'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(gca,'Ylabel'),'String','Radians','fontsize',14,'fontname','helvetica','interpreter','none');
print -dpdf -f2 massspringdamperexperiment2

sys=tf(13.5*(0.75^2),[1 2*0.26*0.75 0.75^2])
figure(3)
clf
set(3,'position',[10 10 500 400])
set(3,'papersize',[5 4])
set(3,'paperposition',[0 0 5 4])
[y,t]=step(sys,20);
h1=plot(t,y);
grid
set(gca,'fontname','times')
set(gca,'fontsize',14)
set(h1,'linewidth',2);
set(get(gca,'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(gca,'Ylabel'),'String','Radians','fontsize',14,'fontname','helvetica','interpreter','none');
print -dpdf -f3 massspringdamperexperiment3

