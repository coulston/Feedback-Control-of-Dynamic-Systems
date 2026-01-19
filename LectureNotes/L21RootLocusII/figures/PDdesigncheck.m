s=tf([1 0],1);
G=1/((s+10)*(s^2+3*s+2));
Kd = 16.01;
Kp = 84.25;
Inner = feedback(G,Kd*s); % find transfer function for inner loop
T = feedback(Inner*Kp,1); % find closed loop transfer function
step(T)
set(1,'position',[100 100 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
print -f1 -dpdf PDdesigncheck