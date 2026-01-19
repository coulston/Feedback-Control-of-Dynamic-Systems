s=tf([1 0],1);
sys=0.5/((s+.5)*(s+1)*(s+.1));
figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
bode(sys)
grid


figure(2)
clf
set(2,'position',[10 10 400 400])
set(2,'papersize',[4 4])
set(2,'paperposition',[0 0 4 4])
nyquist(sys)


print -f1 -dpdf example1_1
print -f2 -dpdf example1_2