s=tf([1 0],1);
G=-1/(s+.5);
figure(1)
set(1,'position',[10 10 800 600])
set(1,'papersize',[8 6])
set(1,'paperposition',[0 0 8 6])
h=nyquistplot(G);
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
a.Xlim{1}=[-2.1 2.1];
a.Ylim{1}=[-2.1 2.1];
setoptions(h,a);
h=findobj(1,'Type','line');
for i=1:length(h),
    set(h(i),'Linewidth',2)
    set(h(i),'MarkerSize',20)
end;
print -f1 -dpdf nyquist3.pdf
