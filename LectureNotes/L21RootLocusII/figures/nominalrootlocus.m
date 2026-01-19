figure(1)
s=tf([1 0],[1]); % define s as Laplace Variable
sys=1/((s^2+3*s+2)*(s+10));
h=rlocusplot(sys);
p=getoptions(h); % get options for plot
p.XLim=[-15 5];
p.YLim=[-15 15];
setoptions(h,p) % change axis limits
line([-2 -2],[-15 15],'linewidth',1,'color','black') % add lines to define acceptable region
line([0 -15],[0 15*tan(54*pi/180)],'linewidth',1,'color','black')
line([0 -15],[0 -15*tan(54*pi/180)],'linewidth',1,'color','black')

set(1,'papersize',[5 5])
set(1,'paperposition',[0 0 5 5])
print -f1 -dpdf nominalrootlocus