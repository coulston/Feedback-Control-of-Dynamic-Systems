set(0,'defaulttextinterpreter','latex')
sys=tf([.35],[1 .05])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
[y,t]=step(sys,120);
y=3*[zeros(10,1);y];
y=y+0.5*randn(size(y))+21;
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];
[ax,h1,h2]=plotyy(t,y,t,3*(t>0));
grid
set(ax,'fontname','times')
set(ax,'fontsize',14)
set(h1,'linewidth',2);
set(h2,'linewidth',2);
set(get(ax(1),'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(ax(1),'Ylabel'),'String','Degrees Celsius','fontsize',14,'fontname','helvetica','interpreter','none');
%set(ax(1),'Xticklabel','{}')
set(ax(2),'Ylim',[0 9])
set(ax(2),'Ytick',[3 6 9])
set(get(ax(2),'Ylabel'),'String','Voltage (V)','fontsize',14,'fontname','helvetica','interpreter','none');
%plotpdftex(1,'heaterexperiment1',[1.5 1])
print -dpdf -f1 heaterexperiment1

figure(2)
clf
set(2,'position',[10 10 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
y=(y-21)/3;
plot(t,y,'linewidth',2)
set(gca,'fontsize',14)
set(gca,'fontname','times')
grid
axis([-20 120 -1 8])
xlabel('Time (s)','fontname','helvetica','interpreter','none')
ylabel('Scaled Output','fontname','helvetica','interpreter','none')
%plotpdftex(2,'heaterexperiment2',[1.5 1])
print -dpdf -f2 heaterexperiment2