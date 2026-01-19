Kp=3.84;
Kd=-0.85;
% Configuration #2
figure(1)
T = tf(100*Kp,[1 111+100*Kd 100*(1+Kp)])
step(T)

set(1,'position',[10 10 500 500])
set(1,'papersize',[5 5])
set(1,'paperposition',[0 0 5 5])


print -dpdf -f1 prob3_1
