figure(1)
set(1,'Position',[100 100 500 400])
set(1,'Papersize',[5 4])
set(1,'Paperposition',[0 0 5 4])
zeta=.6;
omegan=2;
K=2;
sys=tf(K*omegan^2,[1 zeta*omegan*2 omegan^2])
[y,t]=step(sys,5);
plot(t,y,'linewidth',2)
set(gca,'fontsize',14)
grid
xlabel('Time (s)')
print -dpdf -f1 stepresponse
ylabel('Magnitude')
