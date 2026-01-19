figure(1)
clf
set(1,'position',[10 500 400 300])
%set(1,'paperorientation','landscape')
set(1,'papersize',[2.6 2.5])
set(1,'paperposition',[-.6 -.2 3.4 2.8])
ha=axes;
axis([-1 1 -1 1])
set(ha,'visible','off')
arrow([-1 0],[1 0]);
text(.85,-.15,'\fontname{times}\fontsize{12}Re\{{\its}\}')
text(-.45,.95,'\fontname{times}\fontsize{12}Im\{{\its}\}')
arrow([0 -1],[0 1]);
hold on
plot(.5,.7,'.','markersize',20)
line([.5 .5],[.03 -.03])
line([.03 -.03],[.7 .7])
text(.48,-.06,'\fontname{times}\fontsize{14}\ita')
text(-.19,.7,'\fontname{times}\fontsize{14}\itjb')
text(.54,.7,'\fontname{times}\fontsize{14}\its')
line([0 .5],[0 .7])
text(.15,.15,'\fontname{times}\fontsize{14}\it\theta')
text(.25,.5,'\fontname{times}\fontsize{14}\itr')
axis equal
theta=0:.01:atan(.7/.5);
plot(.1*cos(theta),.1*sin(theta),'k-')
print -dpdf -f1 complexplane.pdf