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
s=j*(-.7:.01:-.55)';
theta=-pi/2:.01:pi/2;
s=[s;-.5j+.05*cos(theta)'+0.05*j*sin(theta)'];
s=[s;j*(-.45:.01:-.05)'];
s=[s;.05*cos(theta)'+0.05*j*sin(theta)'];
s=[s;j*(.05:.01:.45)'];
s=[s;.5j+.05*cos(theta)'+0.05*j*sin(theta)'];
s=[s;j*(.55:.01:.7)'];
hold on
plot(s,'linewidth',2)
plot([-.5j 0+eps*j .5j],'x','markersize',10,'linewidth',2)
arrow([0 .2],[0 .21],'width',0,'length',10,'baseangle',45,'tipangle',40,'edgecolor','b','facecolor','b')
line([-.05 .05],[-.7 -.7],'color','k')
line([-.05 .05],[.7 .7],'color','k')
text(-.16,-.7,'\fontname{times}\fontsize{14}{\it-j}\rho')
text(-.19,.7,'\fontname{times}\fontsize{14}{\itj}\rho')
plot(-.5,0,'o','markersize',12,'linewidth',2)
hold off
tag