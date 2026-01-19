figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
sys=tf(200*poly([-10 -100]),poly([0 -1 -2]));
bode(sys)
grid
print -f1 -dpdf prob4