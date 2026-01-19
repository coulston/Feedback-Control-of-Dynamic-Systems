s=tf([1 0],1);
G=1/(s^2+0.5*s+1);
figure(1)
set(1,'position',[10 10 800 600])
set(1,'papersize',[8 6])
set(1,'paperposition',[0 0 8 6])
h=bodeplot(G);
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
a.Xlim{1}=[.01 100];
a.Ylim{1}=[-60 10];
a.Ylim{2}=[-180 0];
setoptions(h,a);
grid
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
end;
print -f1 -dpdf bode2.pdf
