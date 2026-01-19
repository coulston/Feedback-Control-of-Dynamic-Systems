figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
s=tf([1 0],1);
G = (s+6)/((s+1)*(s+10)*(s^2+10*s+50));
rlocus(G)
hold on
line([-5 -35],[0 0],'linewidth',2,'color','black')
line([-5  10],[0  25.98],'linewidth',2,'color','black')
line([-5  10],[0  -25.98],'linewidth',2,'color','black')
print -dpdf -f1 rlocusasymptotes

