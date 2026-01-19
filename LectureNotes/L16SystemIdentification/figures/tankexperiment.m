%Note: this file was adapted from the ``heaterexperiment.m'' file to use a 2-tank system instead of thermal system in Fall 2022
patm = 760; %atmospheric pressure in mmHg
pdelta = 30; %desired change in pressure (keeping 3 since that's how the heater experiment ran)
flow0 = 1; %initial flow rate
set(0,'defaulttextinterpreter','latex')
sys=tf([.05],[1 1.2])
figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
[y,t]=step(sys,10);
y=pdelta*[zeros(10,1);y];
y=y+0.05*randn(size(y))+flow0;
dt=t(2)-t(1);
t=[(-10*dt:dt:-dt)';t];
pin=zeros(size(t));
for i = 1:length(t)
    if t(i)<0
        pin(i)=patm;
    else
        pin(i)=patm+pdelta;
    end
end
[ax,h1,h2]=plotyy(t,y,t,pin);
grid
set(ax,'fontname','times')
set(ax,'fontsize',14)
set(h1,'linewidth',2);
set(h2,'linewidth',2);
set(get(ax(1),'Xlabel'),'String','Time (s)','fontsize',14,'fontname','helvetica','interpreter','none');
set(get(ax(1),'Ylabel'),'String','Flow Rate (m^3/s)','fontsize',14,'fontname','helvetica','interpreter','none');
%set(ax(1),'Xticklabel','{}')
set(ax(2),'Ylim',[patm patm+1.5*pdelta])
set(ax(2),'Ytick',[patm patm+0.5*pdelta patm+pdelta patm+1.5*pdelta])
set(get(ax(2),'Ylabel'),'String','Pressure (mmHg)','fontsize',14,'fontname','helvetica','interpreter','none');
%plotpdftex(1,'heaterexperiment1',[1.5 1])
print -dpdf -f1 heaterexperiment1

figure(2)
clf
set(2,'position',[10 10 500 400])
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])
y=(y-flow0)/pdelta;
plot(t,y,'linewidth',2)
set(gca,'fontsize',14)
set(gca,'fontname','times')
grid
%axis([-20 120 -1 8])
xlabel('Time (s)','fontname','helvetica','interpreter','none')
ylabel('Scaled Output','fontname','helvetica','interpreter','none')
%plotpdftex(2,'heaterexperiment2',[1.5 1])
print -dpdf -f2 heaterexperiment2