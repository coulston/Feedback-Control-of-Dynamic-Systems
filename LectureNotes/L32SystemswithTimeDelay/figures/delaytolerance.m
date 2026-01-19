sys=tf([10],[1 2 1]);
[mag,phase,omega]=bode(sys);
mag=squeeze(mag);
phase=squeeze(phase);
figure(1)
clf
set(1,'position',[10 10 600 500])
set(1,'papersize',[6 5])
set(1,'paperposition',[0 0 6 5])
subplot(2,1,1)
semilogx(omega,20*log10(mag),'linewidth',2)
%axis([.01 10 -40 10])
%set(gca,'ytick',[-40 -30 -20 -10 0 10],'fontsize',14)
xlabel('Frequency (rad/s)')
ylabel('Magnitude (dB)')
title('Bode Diagram')
grid
subplot(2,1,2)
semilogx(omega,phase,'linewidth',2)
%axis([.01 10 -360 0])
%set(gca,'ytick',[-360 -270 -180 -90 0],'fontsize',14)
xlabel('Frequency (rad/s)')
ylabel('Phase (deg)')
grid


print -f1 -dpdf delaytolerance
