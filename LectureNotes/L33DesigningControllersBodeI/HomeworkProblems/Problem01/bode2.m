s=tf([1 0],1);
G=3.5*(s+100)/(s*(s^2+50*s+500));
figure(1)
clf
set(1,'position',[10 10 800 600])
set(1,'papersize',[8 6])
set(1,'paperposition',[0 0 8 6])
h=bodeplot(G);
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
a.Xlim{1}=[.1 1000];
a.Ylim{1}=[-95 20];
a.Ylim{2}=[-225 -90];
setoptions(h,a);
grid
print -f1 -dpdf bode2.pdf
