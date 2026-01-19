figure(1)
clf
set(1,'position',[10 10 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
sys=tf([1 4],[1 4 9])
step(sys)
set(gca,'fontsize',14)
print -f1 -dpdf stepresponse


stepinfo(sys,'settlingtimethreshold',.01)