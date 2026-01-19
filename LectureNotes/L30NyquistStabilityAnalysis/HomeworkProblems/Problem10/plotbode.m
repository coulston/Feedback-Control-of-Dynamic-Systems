s=tf([1 0],1);
G=20*(s+5)/((s-1)*(s+10));
figure(1)
set(1,'position',[10 10 1000 700])
set(1,'papersize',[10 7])
set(1,'paperposition',[0 0 9.95 6.95])
h=bodeplot(G);
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
a.Xlim{1}=[.1 100];
a.Ylim{1}=[-20 30];
a.Ylim{2}=[-225 -45];
a.GridColor=[0 0 0];
setoptions(h,a);
grid
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
end;
h=findobj(1,'Type','Axes')
for i=1:length(h)
    set(h(i),'GridAlpha',.5)
     set(h(i),'MinorGridAlpha',.8)
end;
print -f1 -dpdf bode.pdf
