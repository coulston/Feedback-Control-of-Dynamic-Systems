m1=5;
c1=5;
k1=420;
figure(1)
G=tf([c1 k1],[m1 c1 k1])
bode(G)
set(1,'papersize',[5 5])
set(1,'paperposition',[0 0 5 5])
print -f1 -dpdf prob4_1

m2=.5;
c2=.5;
k2=42;
figure(2)
G=tf(conv([c1 k1],[m2 c2 k2]),[m1*m2 m1*c2+m2*c1+m2*c2 c1*c2+m1*k2+m2*k1+m2*k2 c1*k2+c2*k1 k1*k2])
bode(G)
set(2,'papersize',[5 5])
set(2,'paperposition',[0 0 5 5])
print -f2 -dpdf prob4_2