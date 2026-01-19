s=tf([1 0],1);
sys=2000/(s*(s+200));
[mag,phase,w]=bode(sys,{1,100000});
mag=squeeze(mag);
phase=squeeze(phase);
figure(1)
clf
set(1,'Position',[100 100 500 500])
set(1,'Papersize',[5 5])
set(1,'PaperPosition',[0 0 5 5])
subplot(2,1,1)
semilogx(w,20*log(mag),'linewidth',2)
set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
subplot(2,1,2)
semilogx(w,phase,'linewidth',2)
set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
print -dpdf -f1 Probpic