s=tf([1 0],1);
G=180/(s*(s^2+50*s+300));
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
a.Xlim{1}=[.1 1000];
a.Ylim{1}=[-100 30];
a.Ylim{2}=[-270 0];
setoptions(h,a);
grid
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
end;
print -f1 -dpdf bode3.pdf
