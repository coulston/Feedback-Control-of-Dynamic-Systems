s=tf([1 0],1); % define Laplace Variable
figure(1)
bode(1/(s^2+s+1))

figure(2)
bode((s+5)/(s*(s+1)*(s+100)))

figure(3)
bode((s+5)/(s*(s^2+s+1)))


set(1,'papersize',[5 5])
set(1,'paperposition',[0 0 5 5])
print -f1 -dpdf bodeprob1


set(2,'papersize',[5 5])
set(2,'paperposition',[0 0 5 5])
print -f2 -dpdf bodeprob2

set(3,'papersize',[5 5])
set(3,'paperposition',[0 0 5 5])
print -f3 -dpdf bodeprob3

