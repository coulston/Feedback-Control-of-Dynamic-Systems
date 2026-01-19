num=[0 -1 1.4];
den=[1 2 2 1];
rho=100;
i=1;
figure(1)
clf
set(1,'position',[10 10 600 600])
set(1,'papersize',[6 6])
set(1,'paperposition',[0 0 6 6])
ha=axes;
axis([-1.1 1 -1 1])
%axis([-.4 1.0 -1 1])
set(ha,'visible','off')
set(ha,'dataaspectratio',[1 1 1])
arrow([-1.1 0],[1.1 0],'color','white');
arrow([0 -1],[0 1],'color','white');

arrow([-.4 0],[.5 0]);
text(.5,-.1,'Re$\{s\}$')
text(-.3,.95,'Im$\{s\}$')
arrow([0 -1],[0 1]);
s=-.7:.0001:.7;
s1=j*s';
s=[s1];
hold on
plot(s,'linewidth',2)
arrow([0 .2],[0 .21],'width',0,'length',10,'baseangle',45,'tipangle',40,'edgecolor','b','facecolor','b')
line([-.05 .05],[-.7 -.7],'color','k')
line([-.05 .05],[.7 .7],'color','k')
line([-.05 .05],[.3 .3],'color','k')
text(-.16,.7,'$j\rho$')
text(-.19,-.7,'$-j\rho$')
text(-.16,.3,'$\omega$')
plot(s1(end),'.','markersize',20,'linewidth',2,'color','y')
plot(s1(1),'.','markersize',20,'linewidth',2,'color','r')
plot(0+eps*j,'.','markersize',20,'color','g')
hold off
plotpdftex(1,'nyquistdef1',[5 1])

figure(2)
clf
set(2,'position',[10 10 600 600])
set(2,'papersize',[6 6])
set(2,'paperposition',[0 0 6 6])
hb=axes;
axis([-1.1 1 -1 1])
set(hb,'visible','off')
set(hb,'dataaspectratio',[1 1 1])
arrow([-1.1 0],[1.1 0]);
text(1.1,-.1,'Re$\{s\}$')
text(-.3,.95,'Im$\{s\}$')
arrow([0 -1],[0 1]);
s1=rho*s1.';
G1=(num*[s1.^2;s1;ones(size(s1))])./(den*[s1.^3;s1.^2;s1;ones(size(s1))]);
G=[G1];
hold on
plot(G/2,'-','linewidth',2)
line([-.5 -.5],[-.05 .05],'color','k')
% line([-.05 .05],[-.5 -.5],'color','k')
% line([-.05 .05],[.5 .5],'color','k')
% line([.5 .5],[-.05 .05],'color','k')
text(-.54,-.1,'$-1$')
plot(G(end)/2,'.','markersize',20,'color','y')
plot(G(1)/2-.01j,'.','markersize',20,'color','r')
plot((num(end)/den(end))/2+eps*j,'.','markersize',20,'color','g')
% text(.46,-.1,'\fontname{times}\fontsize{14}3')
% text(.06,-.5,'\fontname{times}\fontsize{14}3j')
% text(.06,.5,'\fontname{times}\fontsize{14}-3j')


plotpdftex(2,'nyquistdef2',[2 1])
