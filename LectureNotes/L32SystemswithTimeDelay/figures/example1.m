s=tf([1 0],1);
sys=1/(s+1);
[mag,phase,omega]=bode(sys);
mag=squeeze(mag);
phase=squeeze(phase);
figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
semilogx(omega,20*log10(mag),'linewidth',2)
axis([.01 10 -40 10])
set(gca,'ytick',[-40 -30 -20 -10 0 10],'fontsize',14)
xlabel('Frequency (rad/s)')
ylabel('Magnitude (dB)')
grid

figure(2)
clf
set(2,'position',[10 10 600 400])
set(2,'papersize',[6 4])
set(2,'paperposition',[0 0 6 4])
semilogx(omega,phase,'g-',omega,phase-omega*2*180/pi,'b-','linewidth',2)
axis([.01 10 -360 0])
set(gca,'ytick',[-360 -270 -180 -90 0],'fontsize',14)
xlabel('Frequency (rad/s)')
ylabel('Phase (deg)')
grid


print -f1 -dpdf example1_1
print -f2 -dpdf example1_2