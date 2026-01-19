figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
s=tf([1 0],1);
G = (s+6)/((s+1)*(s+10)*(s^2+10*s+50));
rlocus(G)
K=10;
r=roots([1 21 170 650+K 500+6*K]);
hold on
plot(r,'^','color','black','markersize',10,'linewidth',2)
text(-30,15,['K=',num2str(K)],'fontsize',18);
print -dpdf -f1 rlocusexample3

figure(2)
clf
set(2,'position',[10 10 600 400])
set(2,'papersize',[6 4])
set(2,'paperposition',[0 0 6 4])
s=tf([1 0],1);
G = (s+6)/((s+1)*(s+10)*(s^2+10*s+50));
rlocus(G)
K=200;
r=roots([1 21 170 650+K 500+6*K]);
hold on
plot(r,'^','color','black','markersize',10,'linewidth',2)
text(-30,15,['K=',num2str(K)],'fontsize',18);
print -dpdf -f2 rlocusexample4

figure(3)
clf
set(3,'position',[10 10 600 400])
set(3,'papersize',[6 4])
set(3,'paperposition',[0 0 6 4])
s=tf([1 0],1);
G = (s+6)/((s+1)*(s+10)*(s^2+10*s+50));
rlocus(G)
K=5000;
r=roots([1 21 170 650+K 500+6*K]);
hold on
plot(r,'^','color','black','markersize',10,'linewidth',2)
text(-30,15,['K=',num2str(K)],'fontsize',18);
print -dpdf -f3 rlocusexample5