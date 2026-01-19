Kt=5;
Ke=5;
J1=.01;
J2=.0001;
b=.01;
k=.5;
Ra=1;


s=tf([1 0],1);
G=Kt*(J2*s^2+b*s+k)/(J1*J2*Ra*s^4 + ((J1+J2)*b*Ra+J2*Kt*Ke)*s^3 + ((J1+J2)*k*Ra+Kt*Ke*b)*s^2+Kt*Ke*s);
figure(1)
set(1,'position',[10 10 800 600])
set(1,'papersize',[8 6])
set(1,'paperposition',[0 0 8 6])
h=bodeplot(G);
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
a.Xlim{1}=[1 10000];
a.Ylim{1}=[-120 -10];
a.Ylim{2}=[-180 -45];
setoptions(h,a);
grid
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
end;
print -f1 -dpdf bode2.pdf
