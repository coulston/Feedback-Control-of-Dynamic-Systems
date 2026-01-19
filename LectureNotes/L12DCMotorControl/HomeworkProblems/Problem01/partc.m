%
% Simulation of case (a)
%
s=tf('s'); % define s as the Laplace variable s
G = -(s+30)/(s*(s+2)*(s+30)+160*(s+4)); % transfer function from W to Y
figure(1)
step(G)

%
% Simulation of case (b)
%
G = -20*(s+30)/((s+20)*s*(s+2)*(s+30)+(s+20)*160*(s+4)); % transfer function from W to Y
figure(2)
step(G)

set(1,'papersize',[6 5])
set(1,'paperposition',[0 0 6 5])
print -dpdf -f1 partc_1

set(1,'papersize',[6 5])
set(1,'paperposition',[0 0 6 5])
print -dpdf -f1 partc_2

