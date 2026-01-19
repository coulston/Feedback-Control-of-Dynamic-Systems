sys=tf([15],[1 2 10]);
set(sys,'iodelay',.05)
[mag1,phase1,w1]=bode(sys);
[mag2,phase2,w]=bode(sys,logspace(-1,2,200));
randn('state',1)
magnom=squeeze(mag2);
mag=abs(squeeze(mag1).*(1+w1/20.*randn(size(w1))));
magmin=(magnom.*max((1-w/10),.1))*.9;
magmax=(magnom.*(1+w/10));
randn('state',2)
phasenom=squeeze(phase2);
phase=squeeze(phase1).*(1+w1/100.*randn(size(w1)));
phasemin=(phasenom.*max((1-w/50),.1))*.9;
phasemax=(phasenom.*(1+w/50)*1.1);
figure(1)
clf
set(1,'position',[100 100 500 600])
set(1,'papersize',[5 6])
set(1,'paperposition',[0 0 5 6])
subplot(2,1,1)
semilogx(w1,20*log10(mag),'*',w,20*log10(magnom),'-')
axis([.1 50 -40 20])
ylabel('Magnitude (dB)')
subplot(2,1,2)
semilogx(w1,phase,'*',w,phasenom,'-')
axis([.1 50 -300 20])
ylabel('Phase (degree)')
xlabel('Frequency (rad/s)')

figure(2)
clf
set(2,'position',[100 100 500 600])
set(2,'papersize',[5 6])
set(2,'paperposition',[0 0 5 6])
subplot(2,1,1)
semilogx(w1,20*log10(mag),'*',w,20*log10(magnom),'-',w,20*log10(magmin),'-',w,20*log10(magmax),'-')
axis([.1 50 -40 20])
ylabel('Magnitude (dB)')
subplot(2,1,2)
semilogx(w1,phase,'*',w,phasenom,'-',w,phasemin,'-',w,phasemax,'-')
axis([.1 50 -300 20])
ylabel('Phase (degree)')
xlabel('Frequency (rad/s)')

figure(3)
clf
set(3,'position',[100 100 500 500])
set(3,'papersize',[5 5])
set(3,'paperposition',[0 0 5 5])
plot([magnom.*exp(-j*phasenom*pi/180);flipud(magnom).*exp(j*flipud(phasenom)*pi/180);magnom(1).*exp(-j*phasenom(1)*pi/180)],'linewidth',2)
hold on
plot(-1,0,'r+')
axis equal
hold off
title('Nyquist plot of nominal model')
xlabel('Real')
ylabel('Imaginary')

figure(4)
clf
set(4,'position',[100 100 500 500])
set(4,'papersize',[5 5])
set(4,'paperposition',[0 0 5 5])
plot([magmin.*exp(-j*phasemin*pi/180);flipud(magmin).*exp(j*flipud(phasemin)*pi/180);magmin(1).*exp(-j*phasemin(1)*pi/180)],'color','r')
hold on
index=find(phasemax>=-180);
plot([magmax(index).*exp(-j*phasemax(index)*pi/180);flipud(magmax(index)).*exp(j*flipud(phasemax(index))*pi/180);magmax(1).*exp(-j*phasemax(1)*pi/180)],'color','c')
plot([magnom.*exp(-j*phasenom*pi/180)],'linewidth',2)
plot([magnom.*exp(j*phasenom*pi/180)],'linewidth',2)
plot(-1,0,'r+')
hold off
title('Nyquist plot range')
xlabel('Real')
ylabel('Imaginary')

figure(5)
clf
set(5,'position',[100 100 500 600])
set(5,'papersize',[5 6])
set(5,'paperposition',[0 0 5 6])
subplot(2,1,1)
semilogx(w,20*log10(magnom),'-')
axis([.1 50 -40 20])
ylabel('Magnitude (dB)')
grid
subplot(2,1,2)
semilogx(w,phasenom,'-')
axis([.1 50 -300 20])
ylabel('Phase (degree)')
xlabel('Frequency (rad/s)')
grid



print -f1 -dpdf marginsexample1_1
print -f2 -dpdf marginsexample1_2
print -f3 -dpdf marginsexample1_3
print -f4 -dpdf marginsexample1_4
print -f5 -dpdf marginsexample1_5
