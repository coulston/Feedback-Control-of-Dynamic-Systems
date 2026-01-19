clear M;
i=1;
figure(1)
clf
ha=axes;
axis([-.4 1.0 -1 1])
set(ha,'visible','off')
set(ha,'dataaspectratio',[1 1 1])
arrow([-.4 0],[1.4 0]);
text(1.0,-.1,'\fontname{times}\fontsize{16}Re\{{\its}\}')
text(-.4,.95,'\fontname{times}\fontsize{16}Im\{{\its}\}')
arrow([0 -1],[0 1]);
s=-.7:.01:.7;
s=j*s';
theta=pi/2:-.01:-pi/2;
s=[s;.7*cos(theta)'+0.7*j*sin(theta)'];
hold on
plot(s,'linewidth',2)
arrow([0 .2],[0 .21],'width',0,'length',10,'baseangle',45,'tipangle',40,'edgecolor','b','facecolor','b')
line([-.05 .05],[-.7 -.7],'color','k')
line([-.05 .05],[.7 .7],'color','k')
text(-.23,-.7,'\fontname{times}\fontsize{14}{\it-j}\rho')
text(-.19,.7,'\fontname{times}\fontsize{14}{\itj}\rho')
plot(-.5,0,'o','markersize',12,'linewidth',2)
hold off
