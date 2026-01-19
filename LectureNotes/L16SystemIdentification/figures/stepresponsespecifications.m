figure(1)
clf
set(1,'position',[10 10 600 400])
set(1,'papersize',[6 4])
set(1,'paperposition',[0 0 6 4])
omega=1;
zeta=.5;
sys=tf([omega^2],[1 2*zeta*omega omega^2])
[y,t]=step(sys,12);
axis([0 12 0 1.4])
plot(t,y,'linewidth',2)
hold on
line([0 12],[.1 .1],'linestyle',':','color','k')
line([0 12],[.9 .9],'linestyle',':','color','k')
[a,tr1]=min(abs(y-.1));
[a,tr2]=min(abs(y-.9));
line([t(tr1) t(tr1)],[0 y(tr1)],'linestyle',':','color','k')
line([t(tr2) t(tr2)],[0 y(tr2)],'linestyle',':','color','k')

line([0 12],[.99 .99],'linestyle','--','color','r')
line([0 12],[1.01 1.01],'linestyle','--','color','r')
ts=find(y>=.99 & y<=1.01);
ts=ts(max(find(diff(ts)>1))+1);
line([t(ts) t(ts)],[0 y(ts)],'linestyle','--','color','r')
xlabel('\textsf{Time (s)}')
%ylabel('\textsf{Magnitude}')
text(-2,.5,'\textsf{Magnitude}','Rotation',90,'verticalalignment','middle','horizontalalignment','center')

[Mp,tp]=max(y);
line([0 t(tp)],[Mp Mp],'linestyle',':','color','k')
arrow([t(tr1) -.1],[t(tr2) -.1],'ends','both')
arrow fixlimits
text((t(tr1)+t(tr2))/2, -.05,'$t_{r}$','horizontalalignment','center')
set(gca,'xtick',[t(tr1) t(tr2) t(ts)],'xticklabel',{'|','|','$t_{s}$'})
set(gca,'ytick',[.1 .9 1 Mp],'yticklabel',{'$0.1K$','$0.9K$','$K$','$K+M_p$'})
plotpdftex(1,'stepreseponsespecifications',[1.4 1])
 