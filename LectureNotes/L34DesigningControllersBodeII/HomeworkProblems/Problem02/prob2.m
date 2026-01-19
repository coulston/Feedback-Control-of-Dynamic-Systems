s=tf('s');
G = 1/(s*(s+10));
%
% Bode plot of G
%
figure(1)
clf
h1=bodeplot(G);
set(get(h1,'axesgrid'),'Title','Bode Plot of G(s)','Grid','on')

C = 232+16.24*s;
%
% Bode plot of loop gain
%
figure(2)
clf
h1=bodeplot(C*G);
set(get(h1,'axesgrid'),'Title','Loop Gain Bode Plot','Grid','on')
%
% Bode plot of closed loop transfer function
%
figure(3)
clf
h2=bodeplot(feedback(C*G,1));
set(get(h2,'axesgrid'),'Title','Closed Loop Bode Plot','Grid','on')
%
% step response
%
figure(4)
clf
step(feedback(C*G,1))

for i=1:4,
    set(i,'papersize',[5 4])
    set(i,'paperposition',[0 0 5 4])
end;
print -f1 -dpdf prob2_1
print -f2 -dpdf prob2_2
print -f3 -dpdf prob2_3
print -f4 -dpdf prob2_4

