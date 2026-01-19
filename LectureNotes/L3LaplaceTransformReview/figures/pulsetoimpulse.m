% figure(1)
% set(1,'position',[10 10 600 300])
% set(1,'papersize',[6 3])
% set(1,'paperposition',[0 0 6 3])
% t=-2:.01:2;
% plot(t,(t>-.5 & t<=.5),'linewidth',2);
% text(.55,1.1,'\fontname{times}\fontsize{14}1/2a')
% set(gca,'fontsize',14)
% set(gca,'xtick',[-.5 0 .5])
% set(gca,'xticklabel',['-a|0|a'])
% xlabel('Time (s)')
% ylabel('Magnitude')
% axis([-2 2 -.5 6])
% 
% figure(2)
% set(2,'position',[10 10 600 300])
% set(2,'papersize',[6 3])
% set(2,'paperposition',[0 0 6 3])
% t=-2:.01:2;
% plot(t,(t>-.5 & t<=.5),'linewidth',2,'color',[.75 .75 1]);
% hold on
% plot(t,2*(t>-.25 & t<=.25),'linewidth',2);
% hold off
% text(.3,2.1,'\fontname{times}\fontsize{14}1/2b')
% set(gca,'fontsize',14)
% set(gca,'xtick',[-.5 -.25 0 .25 .5])
% set(gca,'xticklabel',['-a|-b|0|b|a'])
% xlabel('Time (s)')
% ylabel('Magnitude')
% axis([-2 2 -.5 6])

figure(3)
set(3,'position',[10 10 600 300])
set(3,'papersize',[6 3])
set(3,'paperposition',[0 0 6 3])
t=-2:.01:2;
plot(t,(t>0 & t<=.5),'linewidth',2,'color',[.75 .75 1]);
hold on
plot(t,2*(t>0 & t<=.25),'linewidth',2,'color',[.75 .75 1]);
plot(t,5*(t>0 & t<=.1),'linewidth',2);
hold off
set(gca,'fontsize',14)
text(.15,5.1,'$\frac{1}{t_{0}}$')
set(gca,'xtick',[0 .1 .25 .5])
set(gca,'ytick',[]);
set(gca,'xticklabel',['0|$t_{0}$||'])
xlabel('Time (s)')
ylabel('Magnitude')
axis([-1 1 -.5 6])

plotpdftex(3,'pulsetoimpulse3.pdf',[1.5 1])
% print -f1 -dpdf pulsetoimpulse1.pdf
% print -f2 -dpdf pulsetoimpulse2.pdf
% print -f3 -dpdf pulsetoimpulse3.pdf