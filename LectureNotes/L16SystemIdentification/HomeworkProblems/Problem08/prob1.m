K1=4;
sigma1=6;
sys1=tf([K1*sigma1],[1 sigma1])
K2=3;
zeta=.46;
omegan=10;
sys2=tf([K2*omegan^2],[1 2*zeta*omegan omegan^2])
figure(1);
[y,t]=step(sys1);
plot(t,y,'linewidth',2)
grid
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Magnitude')
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])

figure(2)
[y,t]=step(sys2);
plot(t,y,'linewidth',2)
grid
set(gca,'fontsize',14)
xlabel('Time (s)')
ylabel('Magnitude')
set(2,'papersize',[5 4])
set(2,'paperposition',[0 0 5 4])

print -f1 -dpdf prob1a;
print -f2 -dpdf prob1b;
