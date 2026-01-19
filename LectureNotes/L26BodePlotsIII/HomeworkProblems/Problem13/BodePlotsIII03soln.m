s=tf([1 0],1); % define Laplace Variable
figure(1)
bode(1/(s^2+s+1))

set(1,'papersize',[5 5])
set(1,'paperposition',[0 0 5 5])
print -f1 -dpdf bodeprob



