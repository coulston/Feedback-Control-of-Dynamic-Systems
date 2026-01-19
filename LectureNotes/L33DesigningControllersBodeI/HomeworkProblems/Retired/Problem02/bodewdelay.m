s=tf([1 0],1);
% define nominal system
G=(1/10)/(s+1/20);
% Add delay in feedback loop
set(G,'iodelay',0.25)
% plot the bode plot
figure(1)
clf
h=bodeplot(G);
% Set options to increase size of fonts and turn grid on
a=getoptions(h);
a.TickLabel.FontSize=14;
a.Title.FontSize=14;
a.Xlabel.FontSize=14;
a.Ylabel.FontSize=14;
% set limits on phase plot
a.Ylim{2}=[-360 0];
setoptions(h,a);
grid


set(1,'position',[10 10 800 600])
set(1,'papersize',[8 6])
set(1,'paperposition',[0 0 8 6])
print -f1 -dpdf bodewdleay.pdf
