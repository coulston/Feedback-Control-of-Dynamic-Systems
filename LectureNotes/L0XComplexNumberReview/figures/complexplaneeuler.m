figure(1)
clf
set(1,'position',[10 100 400 300])
%set(1,'paperorientation','landscape')
set(1,'papersize',[2.6 2.5])
set(1,'paperposition',[-.6 -.2 3.4 2.8])
clf
ha=axes;
axis([-1 1 -1 1])
set(ha,'visible','off')
arrow([-1 0],[1 0]);
text(.85,-.15,'\fontname{times}\fontsize{12}Re\{{\its}\}')
text(-.45,.95,'\fontname{times}\fontsize{12}Im\{{\its}\}')
arrow([0 -1],[0 1]);
hold on
a=.7*cos(pi/3);
b=.7*sin(pi/3)
plot(a,b,'.','markersize',20)
line([a a],[.03 -.03])
line([.7 .7],[.03 -.03])
line([.03 -.03],[b b])
text(.20,-.08,'\fontname{times}\fontsize{10}cos({\itb})')
text(-.4,b-.045,'\fontname{times}\fontsize{10}{\it j}sin({\itb})')
text(a+.06,b+.08,'\fontname{times}\fontsize{14}e^{\it jb}')
text(.72,-.08,'\fontname{times}\fontsize{10}1')
line([0 a],[0 b])
text(.15,.15,'\fontname{times}\fontsize{14}\itb')
%text(.15,.5,'\fontname{times}\fontsize{14}\itr')
axis equal
theta=0:.01:atan(.7/.5);
plot(.1*cos(theta),.1*sin(theta),'k-')
theta=0:.01:2*pi;
plot(.7*cos(theta),.7*sin(theta),'k-')
print -dpdf -f1 complexplaneeuler.pdf