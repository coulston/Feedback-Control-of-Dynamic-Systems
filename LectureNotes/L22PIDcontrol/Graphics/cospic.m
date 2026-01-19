printopt=1;
figure(1)
clf
set(1,'position',[10 100 500 300])
%set(1,'paperorientation','landscape')
set(1,'papersize',[5.2 3.2])
set(1,'paperposition',[.1 .1 5 3])
theta=0:.01:15;
plot(theta,cos(theta),'linewidth',2,'color','r')
set(gca,'fontsize',14)
title('cos(\theta)')
xlabel('\theta (radians)')
ylabel('Magnitude')
axis([0 4*pi -1 1])
grid
a=get(gca,'position');
xl=get(gca,'xlabel');
xa=get(xl,'position')
xticks=[pi/2  pi 3*pi/2 2*pi 5*pi/2 3*pi 7*pi/2 4*pi];
set(gca,'xtick',xticks,'xticklabel','')
set(gca,'position',a)
set(xl,'position',xa)
% Define the labels
lab = {'\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi','7\pi/2','4\pi'};
% Estimate the location of the labels based on the position
% of the axis
pos = axis; 
y = pos(3);
% Place the new labels
for i = 1:length(lab)
t(i) = text(xticks(i),y,lab{i},'VerticalAlignment','top','HorizontalAlignment','center','fontsize',12);
end
if printopt==1,
  print -f1 -dpdf cospic.pdf
end;

figure(2)
clf
set(2,'position',[10 100 500 300])
set(2,'papersize',[5.2 3.2])
set(2,'paperposition',[.1 .1 5 3])
t=0:.01:5;
plot(t,3*t+1.5,'linewidth',2)
axis([0 5 0 20])
a=axis;
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Phase (rad)')
a=get(gca,'position');
yl=get(gca,'ylabel');
ya=get(yl,'position')
yticks=pi*(1:6);
set(gca,'ytick',yticks,'yticklabel','')
set(gca,'position',a)
set(yl,'position',ya)

% Define the labels
lab = {'\pi','2\pi','3\pi','4\pi','5\pi','6\pi'};
% Estimate the location of the labels based on the position
% of the axis
pos = axis; 
x = pos(1);
% Place the new labels
for i = 1:length(lab)
t(i) = text(x,yticks(i),y,lab{i},'VerticalAlignment','middle','HorizontalAlignment','right','fontsize',12);
end
text(0,1.5,'\phi','VerticalAlignment','middle','HorizontalAlignment','right','fontsize',14);
line([2 2],[3*2+1.5 3*3+1.5])
line([2 3],[3*3+1.5 3*3+1.5])
text(1.75,3*2.5+1.7,'\omega','fontsize',16)
if printopt==1,
  print -f2 -dpdf phasesignalpic.pdf
end;

figure(3)
clf
set(3,'position',[10 100 500 300])
set(3,'papersize',[5.2 3.2])
set(3,'paperposition',[.1 .1 5 3])
t=0:.01:5;
plot(t,cos(3*t+1.5),'linewidth',2)
axis([0 5 -1 1])
set(gca,'fontsize',14)
title('cos(3t+1.5)')
xlabel('Time (s)')
ylabel('Magnitude')
if printopt==1,
  print -f3 -dpdf cossignalpic.pdf
end;
