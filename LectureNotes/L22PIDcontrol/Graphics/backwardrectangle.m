set(0,'defaulttextinterpreter','latex')
figure(1)
clf
set(1,'position',[10 100 500 400])
set(1,'papersize',[5 4])
set(1,'paperposition',[0 0 5 4])
t=0:.01:10;
f = 1+.3*exp(.1*t)+.1*sin(t);
for i=1:10,
    h=rectangle('position',[i-1 0 1 f(100*(i)+1) ],'facecolor',[.5 .5 .5],'linewidth',1);
end;
set(gca,'tickdir','out')
hold on
h=plot(t,f,'linewidth',2);
plot(t(1:100:end),f(1:100:end),'.k','markersize',20)
text(t(101),f(101)+.05,'$e(T_{s})$','horizontalalignment','center','verticalalignment','bottom','fontsize',14)
text(t(801),f(801)+.05,'$e(8T_{s})$','horizontalalignment','center','verticalalignment','bottom','fontsize',14)
annotate(h,6.5,'$e(t)$ ','ul',pi/6,.05)
axis([0 10 0 2])
set(gca,'xtick',0:10)
tick2text(gca,'axis','xy','convert',1,'xformat',@(x)['$',int2str(x),'T_s$'],'yformat','%.1f')
hx = getappdata(gca, 'XTickText');
for i=1:length(hx),
  px = get(hx(i),'position');
  px(2) = -.05;
  set(hx(i), 'fontsize', 12, 'position',px);
end;
hx = getappdata(gca, 'YTickText');
for i=1:length(hx),
  px = get(hx(i),'position');
  px(1) = -.3;
  set(hx(i), 'fontsize', 12, 'position',px);
end;
h=xlabel('Time (s)','fontsize',14);
px=get(h,'position');
px(2)=px(2)-.08;
set(h,'position',px);
h=ylabel('Magnitude','fontsize',14)
px=get(h,'position');
px(1)=px(1)-.85;
set(h,'position',px);
print -f1 -dpdf backwardrectangle
