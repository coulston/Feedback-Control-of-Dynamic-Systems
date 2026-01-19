s=tf([1 0],1);
G = 10*(s+20)/((s^2+5*s+16)*(s+5));
bode(G)
grid

set(1,'position',[100 100 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])

% print -f1 -dpdf problemplot